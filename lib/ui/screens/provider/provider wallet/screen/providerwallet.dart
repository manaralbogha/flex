import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/client/client_wallet/client_wallet.dart';
import 'package:flex/ui/screens/provider/home/widgets/provider_home_drawer.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_header.dart';
import 'package:flutter/material.dart';

class ProviderWalletScreen extends StatelessWidget {
  const ProviderWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      drawer: const ProviderHomeDrawer(),
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

