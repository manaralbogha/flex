import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final double? width;
  final String text;
  final double? borderRadius;
  final Color? color;
  final double? height;
  const CustomButton({
    super.key,
    this.onTap,
    this.width,
    required this.text,
    this.borderRadius,
    this.color,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? AppColors.defaultColor,
      borderRadius: BorderRadius.circular(borderRadius ?? 10),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
        onTap: onTap,
        child: SizedBox(
          width: width ?? SizeConfig.screenWidth,
          height: height ?? SizeConfig.defaultSize * 5,
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 2,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
