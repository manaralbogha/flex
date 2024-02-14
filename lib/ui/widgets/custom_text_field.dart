// import 'package:easy_localization/easy_localization.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double? width;
  final String? hintText, labelText;
  final Widget? suffixIcon;
  final IconData? prefixIcon;
  final void Function()? suffixIconOnTap;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final int? maxLines;
  final int? maxLength;
  final String? initialValue;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final TextEditingController controller;
  final Color? borderSideColor;
  const CustomTextField({
    super.key,
    this.width,
    this.hintText,
    this.suffixIconOnTap,
    this.suffixIcon,
    this.prefixIcon,
    this.labelText,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.maxLines,
    this.initialValue,
    this.autofocus = false,
    this.maxLength,
    this.textInputAction,
    this.onFieldSubmitted,
    required this.controller,
    this.borderSideColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? SizeConfig.defaultSize * 39,
      child: TextFormField(
        controller: controller,
        autofocus: autofocus,
        initialValue: initialValue,
        textInputAction: textInputAction,
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        maxLines: maxLines,
        maxLength: maxLength,
        validator: validator ??
            (value) {
              if (value?.isEmpty ?? true) {
                return "required";
              }
              return null;
            },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          hintText: hintText,
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 22),
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  color: AppColors.defaultColor,
                  size: SizeConfig.defaultSize * 2.2,
                )
              : null,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: AppColors.defaultColor,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.defaultColor),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: borderSideColor ?? Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
