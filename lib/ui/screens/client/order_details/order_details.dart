import 'dart:developer';

import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 1.5),
          width: double.infinity,
          height: SizeConfig.defaultSize * 20,
          color: AppColors.defaultColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                  ),
                  Text(
                    "Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.defaultSize * 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const VerticalSpace(2),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * 2,
                vertical: SizeConfig.defaultSize * 1,
              ),
              width: double.infinity,
              // height: SizeConfig.defaultSize * 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromRGBO(235, 237, 241, 1),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    height: SizeConfig.defaultSize * 5,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      ),
                      color: AppColors.secondaryColor,
                    ),
                    child: const Row(
                      children: [
                        Text(
                          "Order number : 0000000",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Delivery date : "),
                            Text(
                              "22/9/2024",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        VerticalSpace(1),
                        Row(
                          children: [
                            Text("Status : "),
                            Text(
                              "Delivered",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        VerticalSpace(1),
                        Row(
                          children: [
                            Text("Status Date : "),
                            Text(
                              "22/9/2024",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            itemCount: 5,
          ),
        ),
      ]),
    );
  }
}
