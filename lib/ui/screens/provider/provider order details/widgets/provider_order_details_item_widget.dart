import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20orders/widgets/order_row_text.dart';
import 'package:flutter/material.dart';

class SenderInformationWidget extends StatelessWidget {
  const SenderInformationWidget({super.key, required this.header});
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
                  title: 'name',
                  data: 'mohamed ahmed',
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'phone',
                  data: '01120140410',
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'location',
                  data: 'cairo',
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'city',
                  data: "new cairo",
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'Building number',
                  data: "123",
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'level',
                  data: "2",
                ),
                VerticalSpace(0.5),
                OrderRowText(
                  title: 'Location ',
                  data: "Link.com",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
