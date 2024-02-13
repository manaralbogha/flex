import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForgotPasswordBody(),
    );
  }
}

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: SizeConfig.defaultSize * 4,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(AppAssets.forgotPassword),
          ),
          const VerticalSpace(
            2,
          ),
          Text(
            "Forgot Password",
            style: TextStyle(
              fontSize: SizeConfig.defaultSize * 4,
              color: AppColors.defaultColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const VerticalSpace(
            2,
          ),
          Text(
            "Please enter your registered email to send a code to reset your password",
            style: TextStyle(
              fontSize: SizeConfig.defaultSize * 1.9,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const VerticalSpace(
            3,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: "E-mail",
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "required";
              } else {
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value.toString())) {
                  return "Invalid email format";
                }
              }
              return null;
            },
          ),
          const VerticalSpace(
            2,
          ),
          CustomButton(
            text: "Send",
            borderRadius: 8,
            height: SizeConfig.defaultSize * 5.5,
            onTap: () {},
          )
        ],
      ),
    ));
  }
}
