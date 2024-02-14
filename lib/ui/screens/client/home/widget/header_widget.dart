import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * 25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: SizeConfig.defaultSize * 3,
                ),
              ),
              Text(
                "Home",
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 2.2,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
          const VerticalSpace(1.5),
          Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 1.3,
              ),
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              height: SizeConfig.defaultSize * 6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Row(
                children: [
                  Text("Search ..."),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: AppColors.defaultColor,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
