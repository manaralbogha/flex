import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_list_tile.dart';
import 'package:flex/ui/widgets/drawer/drawer_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppColors.defaultColor,
            ),
            child: DrawerHeaderWidget(),
          ),
          CustomListTileWidget(
              icon: Icons.home,
              text: "Home Page",
              onTap: () {
                context.go(AppRouter.kHomeClientView);
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
                context.pop();
                context.push(AppRouter.kClientWalletView);
              }),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          CustomListTileWidget(icon: Icons.work, text: "Orders", onTap: () {}),
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
              icon: Icons.question_mark, text: "Question", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          CustomListTileWidget(
              icon: Icons.assignment, text: "Reports", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          CustomListTileWidget(
              icon: Icons.language, text: "Change the language", onTap: () {}),
          const VerticalSpace(4),
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
