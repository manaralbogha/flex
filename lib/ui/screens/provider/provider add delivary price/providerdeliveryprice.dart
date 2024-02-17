import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ProviderAddDeliveryCost extends StatelessWidget {
  ProviderAddDeliveryCost({super.key});
  final TextEditingController pricecController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AppColors.defaultColor,
        title: const Text(
          "Add Delivery price",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
        child: Column(
          children: [
            CustomTextField(
              controller: pricecController,
              hintText: "New price",
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(
          SizeConfig.defaultSize * 2,
        ),
        child: const CustomButton(text: "save"),
      )),
    );
  }
}
