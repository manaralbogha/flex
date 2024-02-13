import 'dart:developer';

import 'package:flex/logic/bloc/register_client_cubit/register_client_cubit.dart';
import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/custom_snack_bar.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterClientView extends StatelessWidget {
  const RegisterClientView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterClientCubit(),
      child: const Scaffold(
        body: RegisterClientBody(),
      ),
    );
  }
}

class RegisterClientBody extends StatelessWidget {
  const RegisterClientBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<RegisterClientCubit, RegisterClientState>(
        builder: (context, state) {
          RegisterClientCubit registerClientCubit =
              BlocProvider.of<RegisterClientCubit>(context);
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: SizeConfig.defaultSize * 4,
            ),
            child: SingleChildScrollView(
              child: Form(
                key: registerClientCubit.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpace(
                      4,
                    ),
                    Image(
                      image: AssetImage(AppAssets.logo),
                    ),
                    const VerticalSpace(
                      2,
                    ),
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * 3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const VerticalSpace(
                      2,
                    ),
                    CustomTextField(
                      controller: registerClientCubit.nameController,
                      hintText: "Name",
                      keyboardType: TextInputType.text,
                    ),
                    const VerticalSpace(
                      1.5,
                    ),
                    CustomTextField(
                      controller: registerClientCubit.emailController,
                      hintText: "E-mail",
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "required";
                        } else {
                          if (!RegExp(r'\S+@\S+\.\S+')
                              .hasMatch(value.toString())) {
                            return "Invalid email format";
                          }
                        }
                        return null;
                      },
                    ),
                    const VerticalSpace(
                      1.5,
                    ),
                    CustomTextField(
                      controller: registerClientCubit.phoneController,
                      hintText: "Phone",
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return "required";
                        } else {
                          if (value!.length != 11) {
                            return "Invalid phone number";
                          }
                        }
                        return null;
                      },
                    ),
                    const VerticalSpace(
                      1.5,
                    ),
                    CustomTextField(
                      controller: registerClientCubit.passwordController,
                      hintText: "Password",
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const VerticalSpace(
                      1.5,
                    ),
                    CustomTextField(
                      controller: registerClientCubit.confirmPasswordController,
                      hintText: "Confirm Password",
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const VerticalSpace(
                      1.5,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              5,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.defaultColor,
                          ),
                        ),
                      ),
                      hint: const Text(
                        "City",
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: "1",
                          child: Text(
                            "1",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "2",
                          child: Text(
                            "2",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "3",
                          child: Text(
                            "3",
                          ),
                        ),
                      ],
                      onChanged: (newValue) {
                        registerClientCubit.city = newValue;
                        log(registerClientCubit.city.toString());
                      },
                    ),
                    const VerticalSpace(
                      1.5,
                    ),
                    DropdownButtonFormField<String>(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8,
                            ),
                          ),
                          borderSide: BorderSide(
                            color: AppColors.defaultColor,
                          ),
                        ),
                      ),
                      hint: const Text("Region"),
                      items: const [
                        DropdownMenuItem(
                          value: "4",
                          child: Text(
                            "4",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "5",
                          child: Text(
                            "5",
                          ),
                        ),
                        DropdownMenuItem(
                          value: "6",
                          child: Text(
                            "6",
                          ),
                        ),
                      ],
                      onChanged: (newValue) {
                        registerClientCubit.region = newValue;
                        log(registerClientCubit.region.toString());
                      },
                    ),
                    const VerticalSpace(
                      3,
                    ),
                    CustomButton(
                      text: "REGISTER",
                      onTap: () {
                        log(registerClientCubit.city.toString());
                        log(registerClientCubit.region.toString());
                        if (registerClientCubit.formKey.currentState!
                            .validate()) {
                          if (registerClientCubit.city != null &&
                              registerClientCubit.region != null) {
                            log("OK");
                          } else {
                            CustomSnackBar.showCustomSnackBar(
                              context,
                              message: "No city or region was selected",
                              backgroundColor: Colors.red,
                            );
                          }
                        }
                      },
                      borderRadius: 8,
                      height: 50,
                    ),
                    const VerticalSpace(
                      1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Do you have an account ?",
                        ),
                        const HorizontalSpace(
                          1,
                        ),
                        InkWell(
                          onTap: () {
                            context.pushReplacement(
                              AppRouter.kLoginClientView,
                            );
                          },
                          child: const Text(
                            "LOGIN",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
