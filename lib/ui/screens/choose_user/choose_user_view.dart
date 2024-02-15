import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChooseUserView extends StatelessWidget {
  const ChooseUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseUserBody(),
    );
  }
}

class ChooseUserBody extends StatelessWidget {
  const ChooseUserBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(AppAssets.logo),
        ),
        const VerticalSpace(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContainerChooseWidget(
                icon: Icons.fire_truck,
                onTap: () {
                  context.push(AppRouter.kproviderHomescren);
                }),
            const HorizontalSpace(2),
            ContainerChooseWidget(
              icon: Icons.work,
              onTap: () {
                context.push(AppRouter.kLoginClientView);
              },
            ),
          ],
        )
      ],
    ));
  }
}

class ContainerChooseWidget extends StatelessWidget {
  const ContainerChooseWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.defaultSize * 15,
      height: SizeConfig.defaultSize * 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Material(
        color: AppColors.defaultColor,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          splashColor: AppColors.secondaryColor,
          child: Icon(
            icon,
            size: SizeConfig.defaultSize * 5,
          ),
        ),
      ),
    );
  }
}
