import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20order%20details/widgets/provider_order_delviery_widget.dart';
import 'package:flex/ui/screens/provider/provider%20order%20details/widgets/provider_order_details_item_widget.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProviderOrderDeatils extends StatelessWidget {
  const ProviderOrderDeatils({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AppColors.defaultColor,
        title: const Text(
          "Order Deatils",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
            child: const Column(
              children: [
                SenderInformationWidget(
                  header: 'Sender',
                ),
                VerticalSpace(2),
                SenderInformationWidget(
                  header: 'Reciver',
                ),
                VerticalSpace(2),
                DeliveryInformationWidget(
                  header: 'Delivery',
                ),
              ],
            )),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
        child: Row(
          children: [
            const Expanded(child: CustomButton(text: "confirm order")),
            const HorizontalSpace(2),
            Expanded(
                child: CustomButton(
              text: "Add delivery price",
              
              onTap: () {
                context.push(AppRouter.kProviderAddDeliveryprice);
              },
            )),
          ],
        ),
      )),
    );
  }
}
