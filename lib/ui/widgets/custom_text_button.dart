import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      // color: AppColors.backgroundColor,
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        splashColor: AppColors.secondaryColor,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            text,
            style: TextStyle(
              color: AppColors.defaultColor,
              fontSize: SizeConfig.defaultSize * 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
