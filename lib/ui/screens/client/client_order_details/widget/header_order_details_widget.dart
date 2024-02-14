import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderOrderDetailsWidget extends StatelessWidget {
  const HeaderOrderDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 1.5),
      width: double.infinity,
      height: SizeConfig.defaultSize * 20,
      color: AppColors.defaultColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.white,
              ),
              Text(
                "Order",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const VerticalSpace(2),
        ],
      ),
    );
  }
}
