import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/screens/provider/home/widgets/provider_drawer_header.dart';
import 'package:flex/ui/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProviderHomeDrawer extends StatelessWidget {
  const ProviderHomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.defaultColor,
            ),
            child: ProviderDrawerHeaderWidget(),
          ),
          CustomListTileWidget(
              icon: Icons.home,
              text: "Home Page",
              onTap: () {
                context.push(AppRouter.kproviderHomescren);
              }),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          CustomListTileWidget(
              icon: Icons.wallet,
              text: "Wallet",
              onTap: () {
                context.push(AppRouter.kProviderWallet);
              }),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          CustomListTileWidget(
              icon: Icons.email, text: "Incoming messages", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          CustomListTileWidget(
              icon: Icons.language,
              text: "Change the language",
              onTap: () {
                context.push(AppRouter.kProviderChangeLanguage);
              }),
          const Spacer(),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          SizedBox(
            width: double.infinity,
            height: SizeConfig.defaultSize * 5,
            child: InkWell(
              onTap: () {},
              child: const Center(
                child: Text("Logout"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
