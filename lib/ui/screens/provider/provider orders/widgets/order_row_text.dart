import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class OrderRowText extends StatelessWidget {
  const OrderRowText({super.key, required this.title, required this.data});
  final String title;
  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$title :",
            style: TextStyle(
                color: const Color(0xff100f1d),
                fontWeight: FontWeight.w400,
                fontFamily: "Cairo",
                fontStyle: FontStyle.normal,
                fontSize: SizeConfig.defaultSize * 1.4),
            textAlign: TextAlign.right),
        Text(" $data",
            style: TextStyle(
                color: const Color(0xffb7b7b7),
                fontWeight: FontWeight.w400,
                fontFamily: "Cairo",
                overflow: TextOverflow.ellipsis,
                fontStyle: FontStyle.normal,
                fontSize: SizeConfig.defaultSize * 1.4),
            textAlign: TextAlign.right)
      ],
    );
  }
}
