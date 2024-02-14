import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/client/client_home/widget/drawer_header_widget.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
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
          ListTileWidget(icon: Icons.home, text: "Home Page", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          ListTileWidget(icon: Icons.wallet, text: "Wallet", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          ListTileWidget(icon: Icons.work, text: "Orders", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          ListTileWidget(
              icon: Icons.email, text: "Incoming messages", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          ListTileWidget(
              icon: Icons.question_mark, text: "Question", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          ListTileWidget(icon: Icons.assignment, text: "Reports", onTap: () {}),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            thickness: 1.5,
          ),
          ListTileWidget(
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

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
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
