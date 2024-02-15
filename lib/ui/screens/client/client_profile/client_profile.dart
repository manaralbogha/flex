import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_header.dart';
import 'package:flex/ui/widgets/custom_list_tile.dart';
import 'package:flex/ui/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class ClientProfileView extends StatelessWidget {
  const ClientProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: ClientProfileBody(scaffoldKey: scaffoldKey),
    );
  }
}

class ClientProfileBody extends StatelessWidget {
  const ClientProfileBody({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
          icon: Icons.menu,
          text: "Profile Page",
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize * 3),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const VerticalSpace(.5),
                        Text(
                          "Name@Neme.com",
                          style:
                              TextStyle(fontSize: SizeConfig.defaultSize * 1.4),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const VerticalSpace(2),
              CustomListTileWidget(
                icon: Icons.settings,
                text: "Setting",
                onTap: () {},
              ),
              Divider(
                endIndent: SizeConfig.defaultSize * 2,
                indent: SizeConfig.defaultSize * 2,
              ),
              CustomListTileWidget(
                icon: Icons.star,
                text: "Ratings",
                onTap: () {},
              ),
              Divider(
                endIndent: SizeConfig.defaultSize * 2,
                indent: SizeConfig.defaultSize * 2,
              ),
              CustomListTileWidget(
                icon: Icons.key,
                text: "change password",
                onTap: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
