import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class IncomingMassagesItemWidget extends StatelessWidget {
  const IncomingMassagesItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.kProviderChatScreen);
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 2.5,
                vertical: SizeConfig.defaultSize / 1.6),
            width: double.infinity,
            child: Row(
              children: [
                CircleAvatar(
                    backgroundImage: AssetImage(
                  AppAssets.avatar,
                )),
                const HorizontalSpace(1),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Mohamed ",
                          style: TextStyle(
                              color: const Color(0xff100f1d),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                              fontSize: SizeConfig.defaultSize * 1.8),
                          textAlign: TextAlign.right),
                      Text("Hi mohamed how are you doing? ",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: const Color(0xffb7b7b7),
                              fontWeight: FontWeight.w400,
                              fontFamily: "Cairo",
                              fontStyle: FontStyle.normal,
                              fontSize: SizeConfig.defaultSize * 1.6),
                          textAlign: TextAlign.right)
                    ],
                  ),
                ),
                // const Spacer(),
                const HorizontalSpace(2),
                Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text("2",
                        style: TextStyle(
                            color: const Color(0xffffffff),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Cairo",
                            fontStyle: FontStyle.normal,
                            fontSize: SizeConfig.defaultSize * 1.8),
                        textAlign: TextAlign.right)),
              ],
            ),
          ),
          Divider(
            endIndent: SizeConfig.defaultSize * 2,
            indent: SizeConfig.defaultSize * 2,
            color: const Color(0xffebedf1),
          )
        ],
      ),
    );
  }
}
