import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
    this.containerColor = const Color.fromRGBO(235, 244, 243, 1),
    this.textColor = Colors.black,
    this.iconColor = AppColors.defaultColor,
  });
  final IconData icon;
  final String text;
  final void Function() onTap;
  final Color? containerColor;
  final Color? textColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: SizeConfig.defaultSize * 7,
      child: Material(
        color: containerColor,
        borderRadius: BorderRadius.circular(8.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              children: [
                Container(
                  width: SizeConfig.defaultSize * 4,
                  height: SizeConfig.defaultSize * 4,
                  decoration: BoxDecoration(
                    color: iconColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
                const HorizontalSpace(1),
                Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward,
                  color: textColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
