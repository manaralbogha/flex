import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/client/client_home/widget/container_widget.dart';
import 'package:flex/ui/screens/client/client_home/widget/drawer_widget.dart';
import 'package:flex/ui/screens/client/client_home/widget/header_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeClientView extends StatelessWidget {
  const HomeClientView({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.defaultColor,
      drawer: const DrawerWidget(),
      body: HomeClientBody(scaffoldKey: scaffoldKey),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.defaultColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: SizeConfig.defaultSize * 4,
        ),
      ),
    );
  }
}

class HomeClientBody extends StatelessWidget {
  const HomeClientBody({
    super.key,
    required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          HeaderWidget(scaffoldKey: scaffoldKey),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.defaultSize * 4,
                horizontal: SizeConfig.defaultSize * 2,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Requests",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.defaultSize * 2,
                    ),
                  ),
                  const VerticalSpace(2),
                  ContainerWidget(
                    icon: Icons.hourglass_bottom_outlined,
                    onTap: () {
                      context.push(AppRouter.kClientOrderDetailsView);
                    },
                    text: "Waiting for the delivery person",
                  ),
                  const VerticalSpace(1.5),
                  ContainerWidget(
                    icon: Icons.fire_truck,
                    onTap: () {},
                    text: "The order is being delivered",
                  ),
                  const VerticalSpace(1.5),
                  ContainerWidget(
                    icon: Icons.work,
                    onTap: () {},
                    text: "New orders",
                  ),
                  const VerticalSpace(1.5),
                  ContainerWidget(
                    icon: Icons.done,
                    onTap: () {},
                    text: "Delivered",
                  ),
                  const VerticalSpace(1.5),
                  ContainerWidget(
                    icon: Icons.done,
                    onTap: () {},
                    text: "Retail orders",
                    containerColor: const Color.fromRGBO(21, 27, 41, 1),
                    textColor: Colors.white,
                    iconColor: Colors.grey,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
