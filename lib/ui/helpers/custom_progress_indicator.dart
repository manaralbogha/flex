import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flutter/material.dart';

abstract class CustomProgressIndicator {
  static bool isOpen = false;
  static void showProgressIndicator(BuildContext context) {
    isOpen = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: AppColors.defaultColor.withOpacity(.4),
      builder: (context) => WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: const Center(
          child: CircularProgressIndicator(
            color: Colors.white,
            strokeWidth: 3,
          ),
        ),
      ),
    ).then((value) => isOpen = false);
  }
}
