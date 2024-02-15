import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/screens/provider/home/widgets/provider_home_drawer.dart';
import 'package:flutter/material.dart';

class ProviderChangeLanguageScreen extends StatelessWidget {
  const ProviderChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ProviderHomeDrawer(),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AppColors.defaultColor,
        title: const Text(
          "change Language",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: true,
                groupValue: true,
                onChanged: (value) {},
              ),
              const Text(" اللغه العربيه  "),
            ],
          ),
          Row(
            children: [
              Radio(value: true, groupValue: bool, onChanged: (value) {}),
              const Text("english"),
            ],
          )
        ],
      ),
    );
  }
}
