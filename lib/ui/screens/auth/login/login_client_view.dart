import 'dart:developer';

import 'package:flex/logic/bloc/login_client_cubit/login_client_cubit.dart';
import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginClientView extends StatelessWidget {
  const LoginClientView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginClientCubit(),
      child: const Scaffold(
        body: LoginClientBody(),
      ),
    );
  }
}

class LoginClientBody extends StatelessWidget {
  const LoginClientBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginClientCubit, LoginClientState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        LoginClientCubit loginClientCubit =
            BlocProvider.of<LoginClientCubit>(context);
        return SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: SizeConfig.defaultSize * 4,
            ),
            child: Form(
              key: loginClientCubit.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const VerticalSpace(
                    5,
                  ),
                  Image(
                    image: AssetImage(AppAssets.logo),
                  ),
                  const VerticalSpace(
                    3,
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize * 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const VerticalSpace(
                    3,
                  ),
                  CustomTextField(
                    controller: loginClientCubit.emailController,
                    hintText: "E-mail or Phone",
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return "required";
                      }
                      // else {
                      //   if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value.toString())) {
                      //     return "Invalid email format";
                      //   }
                      // }
                      return null;
                    },
                  ),
                  const VerticalSpace(
                    1.5,
                  ),
                  CustomTextField(
                    controller: loginClientCubit.passwordController,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const VerticalSpace(
                    1.5,
                  ),
                  InkWell(
                    onTap: () {
                      context.push(AppRouter.kForgotPasswordView);
                    },
                    child: const Text(
                      "Forgot your password ?",
                    ),
                  ),
                  const VerticalSpace(
                    3,
                  ),
                  CustomButton(
                    text: "LOGIN",
                    onTap: () {
                      if (loginClientCubit.formKey.currentState!.validate()) {
                        log("Ok");
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
                        "You don't have an account ?",
                      ),
                      const HorizontalSpace(
                        1,
                      ),
                      InkWell(
                        onTap: () {
                          context.pushReplacement(
                            AppRouter.kRegisterClientView,
                          );
                        },
                        child: const Text(
                          "ٌRegister",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
      },
    );
  }
}
