import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/screens/provider/home/widgets/provider_home_drawer.dart';
import 'package:flex/ui/screens/provider/provider%20incoming%20masseages/widgets/incoming_massages_item_widget.dart';
import 'package:flutter/material.dart';

class ProviderIncomingMassages extends StatelessWidget {
  const ProviderIncomingMassages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incoming Massages"),
      ),
      backgroundColor: const Color(0xfffafbfd),
      drawer: const ProviderHomeDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: SizeConfig.defaultSize),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return const IncomingMassagesItemWidget();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}
