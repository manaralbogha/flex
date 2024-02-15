import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/home/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';

class ProviderHomeScreen extends StatelessWidget {
  const ProviderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
          // backgroundColor: Colors.white,
          ),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AppColors.defaultColor,
        title: const Text(
          "home",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HomeItemWidget(
              label: 'work today',
              onPressed: () {},
              nottifactionNubmer: '2',
            ),
            const VerticalSpace(2),
            HomeItemWidget(
              label: 'New orders',
              onPressed: () {},
              nottifactionNubmer: '2',
            ),
            const VerticalSpace(2),
            HomeItemWidget(
              label: 'Offers submitted',
              onPressed: () {},
              nottifactionNubmer: '2',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.defaultColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.science,
          color: Colors.white,
          size: SizeConfig.defaultSize * 4,
        ),
      ),
    );
  }
}
