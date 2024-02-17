import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20orders/widgets/order_row_text.dart';
import 'package:flutter/material.dart';

class DeliveryInformationWidget extends StatelessWidget {
  const DeliveryInformationWidget({super.key, required this.header});
  final String header;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          border: Border.all(color: const Color(0xffebedf1), width: 1),
          color: const Color(0xffffffff)),
      child: Column(
        children: [
          Container(
            height: SizeConfig.defaultSize * 5,
            alignment: Alignment.centerLeft,
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            decoration: const BoxDecoration(
                color: Color(0xff151b29),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
            child: Text(
              "$header order Information",
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
            child: const Column(
              children: [
                OrderRowText(
                  title: 'weight',
                  data: '12K',
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'nubmer weight',
                  data: '5',
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'Total nubmer weight',
                  data: '2',
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'cost',
                  data: "1400",
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'status',
                  data: "Pending",
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'Date',
                  data: "20/11/2002",
                ),
                VerticalSpace(0.5),
              ],
            ),
          )
        ],
      ),
    );
  }
}
