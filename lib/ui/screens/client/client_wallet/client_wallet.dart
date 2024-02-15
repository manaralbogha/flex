import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_header.dart';
import 'package:flex/ui/widgets/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class ClientWalletView extends StatelessWidget {
  const ClientWalletView({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: ClientWalletBody(scaffoldKey: scaffoldKey),
    );
  }
}

class ClientWalletBody extends StatelessWidget {
  const ClientWalletBody({
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
            text: "Wallet",
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            }),
        Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(SizeConfig.defaultSize * 4),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BalanceWidget(balance: "645.00", text: "Available balance"),
                    SizedBox(
                      height: 50,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                        width: 1,
                      ),
                    ),
                    BalanceWidget(balance: "800.00", text: "Suspended balance"),
                  ],
                ),
              ),
              const VerticalSpace(2),
              CustomButton(
                text: "Balance withdrawal",
                width: SizeConfig.defaultSize * 20,
                borderRadius: 8,
                onTap: () {},
              )
            ],
          ),
        )
      ],
    );
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    super.key,
    required this.text,
    required this.balance,
  });
  final String text;
  final String balance;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: SizeConfig.defaultSize * 1.3,
          ),
        ),
        const VerticalSpace(1),
        Text(
          balance,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
