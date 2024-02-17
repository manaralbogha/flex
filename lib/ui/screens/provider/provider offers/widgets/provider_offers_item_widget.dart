import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20orders/widgets/order_row_text.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OffersItemWidget extends StatelessWidget {
  const OffersItemWidget({super.key});

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
            child: const Text(
              "order number:29109",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OrderRowText(
                  title: 'Sender name',
                  data: 'mohamed ahmed',
                ),
                const VerticalSpace(0.5),
                const OrderRowText(
                  title: 'Shipping Rate',
                  data: '1500 L.E',
                ),
                const VerticalSpace(0.5),
                const OrderRowText(
                  title: 'delivery date',
                  data: '20/11/2024',
                ),
                const VerticalSpace(0.5),
                const OrderRowText(
                  title: 'status ',
                  data: 'pending ',
                ),
                const VerticalSpace(1),
                SizedBox(
                  width: SizeConfig.screenWidth / 2,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: CustomButton(
                          height: 35,
                          text: 'wait',
                        ),
                      ),
                      HorizontalSpace(2),
                      Expanded(
                        child: CustomButton(
                          height: 35,
                          color: Color(0xffe60000),
                          text: 'cancel ',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
