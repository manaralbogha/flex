import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  const CustomListTileWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });
  final IconData icon;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: SizeConfig.defaultSize * 3,
        height: SizeConfig.defaultSize * 3,
        decoration: BoxDecoration(
          color: AppColors.defaultColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: SizeConfig.defaultSize * 2,
        ),
      ),
      title: Text(text),
      onTap: onTap,
    );
  }
}
