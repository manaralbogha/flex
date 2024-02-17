import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20offers/widgets/provider_offers_item_widget.dart';
import 'package:flutter/material.dart';

class ProviderOffers extends StatelessWidget {
  const ProviderOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AppColors.defaultColor,
        title: const Text(
          "Offers submitted",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return const OffersItemWidget();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const VerticalSpace(2);
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
