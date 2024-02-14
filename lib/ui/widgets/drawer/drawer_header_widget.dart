import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.defaultColor,
      child: InkWell(
        onTap: () {
          context.pop();
          context.push(AppRouter.kClientProfileView);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: SizeConfig.defaultSize * 8.5,
                height: SizeConfig.defaultSize * 8.5,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: AssetImage(
                      AppAssets.avatar,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const HorizontalSpace(2),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: SizeConfig.defaultSize * 15,
                    child: const Text(
                      "name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "xxxxxxxxx@xxxxx.com",
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize * 1.3,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: SizeConfig.defaultSize * 3,
                height: SizeConfig.defaultSize * 3,
                child: Material(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(5),
                  child: InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.settings,
                      size: SizeConfig.defaultSize * 2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
