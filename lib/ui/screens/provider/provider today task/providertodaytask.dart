import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20today%20task/widgets/ongoing_new_task_item.dart';
import 'package:flex/ui/screens/provider/provider%20today%20task/widgets/order_new_task_item.dart';
import 'package:flutter/material.dart';

class ProviderTodayTaskScreen extends StatelessWidget {
  const ProviderTodayTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 90,
              backgroundColor: AppColors.defaultColor,
              title: const Text(
                "New orders",
                style: TextStyle(color: Colors.white),
              ),
              iconTheme: const IconThemeData(color: Colors.white),
              bottom: const TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
                  Tab(text: "Orders"),
                  Tab(text: "OnGoing"),
                ],
              ),
            ),
            body: TabBarView(children: [
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return const OrderNewTaskItemWidget();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const VerticalSpace(2);
                  },
                  itemCount: 3,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return const OngoingOrderNewTaskItemWidget();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const VerticalSpace(2);
                  },
                  itemCount: 3,
                ),
              ),
            ])));
  }
}
