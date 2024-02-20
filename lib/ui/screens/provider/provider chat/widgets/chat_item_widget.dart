import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class ChatTextItemWidget extends StatelessWidget {
  const ChatTextItemWidget(
      {super.key,
      required this.check,
      required this.message,
      required this.time});

  final bool check;
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: check
          ? EdgeInsets.only(right: SizeConfig.defaultSize * 8)
          : EdgeInsets.only(
              left: SizeConfig.defaultSize * 8,
            ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            check ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Container(
              decoration: BoxDecoration(
                  color: const Color(0xffebf4f3),
                  borderRadius: BorderRadius.only(
                      topLeft: check ? Radius.zero : const Radius.circular(10),
                      topRight:
                          !check ? Radius.zero : const Radius.circular(10),
                      bottomLeft: const Radius.circular(10),
                      bottomRight: const Radius.circular(10))),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.defaultSize * 1.8,
                  vertical: SizeConfig.defaultSize),
              child: Text(
                message,
                style: TextStyle(
                    color: const Color(0xff100f1d),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Cairo",
                    fontStyle: FontStyle.normal,
                    fontSize: SizeConfig.defaultSize * 1.8),
              )),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment:
                check ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(
                    color: const Color(0xffb7b7b7),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Cairo",
                    fontStyle: FontStyle.normal,
                    fontSize: SizeConfig.defaultSize * 1.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
