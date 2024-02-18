import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';

class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.nottifactionNubmer});
  final String label;
  final VoidCallback onPressed;
  final String nottifactionNubmer;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xffebf4f3)),
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.defaultSize * 2,
            horizontal: SizeConfig.defaultSize / 1.2),
        child: Row(
          children: [
            Text(label,
                style: TextStyle(
                    color: const Color(0xff100f1d),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Cairo",
                    fontStyle: FontStyle.normal,
                    fontSize: SizeConfig.defaultSize * 2),
                textAlign: TextAlign.right),
            const HorizontalSpace(2),
            Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(nottifactionNubmer,
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "Cairo",
                        fontStyle: FontStyle.normal,
                        fontSize: SizeConfig.defaultSize * 1.8),
                    textAlign: TextAlign.right)),
            const Spacer(),
            const Icon(Icons.arrow_forward)
          ],
        ),
      ),
    );
  }
}
