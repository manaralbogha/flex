import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/provider%20orders/widgets/order_row_text.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OngoingOrderNewTaskItemWidget extends StatelessWidget {
  const OngoingOrderNewTaskItemWidget({super.key});

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
            padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * 2,
                top: SizeConfig.defaultSize,
                bottom: SizeConfig.defaultSize,
                right: SizeConfig.defaultSize),
            decoration: const BoxDecoration(
                color: Color(0xff151b29),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
            child: Row(
              children: [
                const Text(
                  "order number:29109",
                  style: TextStyle(color: Colors.white),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.defaultColor,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(SizeConfig.defaultSize / 2.5),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: SizeConfig.defaultSize * 2,
                      ),
                    ),
                    const HorizontalSpace(1),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.defaultColor,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(SizeConfig.defaultSize / 2.5),
                      child: Icon(
                        Icons.email_outlined,
                        size: SizeConfig.defaultSize * 2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
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
                  width: SizeConfig.screenWidth / 3,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          onTap: () {
                            context.push(AppRouter.kProviderOrderDetails);
                          },
                          height: 35,
                          text: 'Details',
                        ),
                      ),
                      const HorizontalSpace(2),
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
