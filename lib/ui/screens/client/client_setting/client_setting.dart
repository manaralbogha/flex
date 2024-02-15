import 'dart:developer';

import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClientSettingView extends StatelessWidget {
  const ClientSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ClientSettingBody(),
    );
  }
}

class ClientSettingBody extends StatelessWidget {
  const ClientSettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomHeader(
            icon: Icons.arrow_back_ios_new,
            text: "Sittings",
            onPressed: () {
              context.pop();
            }),
        Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize * 3),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: SizeConfig.defaultSize * 11,
                    height: SizeConfig.defaultSize * 11,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(
                          AppAssets.avatar,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.defaultSize * 3,
                    height: SizeConfig.defaultSize * 3,
                    decoration: BoxDecoration(
                      color: AppColors.defaultColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: SizeConfig.defaultSize * 2,
                    ),
                  ),
                ],
              ),
              const VerticalSpace(3),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: SizeConfig.defaultSize * 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      Text(
                        "Name Name",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(2),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                height: SizeConfig.defaultSize * 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Row(
                  children: [
                    const Text(
                      "01234567899",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Spacer(),
                    Container(
                      width: SizeConfig.defaultSize * 3,
                      height: SizeConfig.defaultSize * 3,
                      decoration: BoxDecoration(
                        color: AppColors.defaultColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const VerticalSpace(2),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                // height: SizeConfig.defaultSize * 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Address",
                          style: TextStyle(),
                        ),
                        const Spacer(),
                        Container(
                          width: SizeConfig.defaultSize * 3,
                          height: SizeConfig.defaultSize * 3,
                          decoration: BoxDecoration(
                            color: AppColors.defaultColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Divider(),
                    const VerticalSpace(1),
                    const RowAddressWidget(text: "First address"),
                    const VerticalSpace(1),
                    const RowAddressWidget(text: "Second address"),
                    const VerticalSpace(1),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class RowAddressWidget extends StatelessWidget {
  const RowAddressWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            log(text);
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: SizeConfig.defaultSize * 2,
                height: SizeConfig.defaultSize * 2,
                decoration: BoxDecoration(
                  color: AppColors.defaultColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                width: SizeConfig.defaultSize * 1.3,
                height: SizeConfig.defaultSize * 1.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
        ),
        const HorizontalSpace(1),
        Text(
          text,
          style: const TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}
