import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/home/screen/widgets/buttom_sheet_function.dart';
import 'package:flex/ui/screens/provider/home/widgets/home_item_widget.dart';
import 'package:flex/ui/screens/provider/home/widgets/provider_home_drawer.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProviderHomeScreen extends StatelessWidget {
  ProviderHomeScreen({super.key});
  final TextEditingController dateFromcontroller = TextEditingController();
  final TextEditingController dateToController = TextEditingController();
  final TextEditingController governorateController = TextEditingController();
  final TextEditingController zoneController = TextEditingController();
  final TextEditingController priceFromContoller = TextEditingController();
  final TextEditingController priceToContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ProviderHomeDrawer(),
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
              onPressed: () {
                context.push(AppRouter.kProviderTodayTask);
              },
              nottifactionNubmer: '2',
            ),
            const VerticalSpace(2),
            HomeItemWidget(
              label: 'New orders',
              onPressed: () {
                context.push(AppRouter.kProviderNewOrders);
              },
              nottifactionNubmer: '2',
            ),
            const VerticalSpace(2),
            HomeItemWidget(
              label: 'Offers submitted',
              onPressed: () {
                context.push(AppRouter.kProviderOffers);
              },
              nottifactionNubmer: '2',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showButtomSheet(
              context: context,
              priceToContoller: priceToContoller,
              priceFromContoller: priceFromContoller,
              zoneController: zoneController,
              governorateController: governorateController,
              dateToController: dateToController,
              dateFromcontroller: dateFromcontroller);
        },
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
