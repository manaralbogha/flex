import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flex/ui/screens/provider/home/widgets/home_item_widget.dart';
import 'package:flex/ui/screens/provider/home/widgets/provider_home_drawer.dart';
import 'package:flex/ui/widgets/custom_button.dart';
import 'package:flex/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProviderHomeScreen extends StatelessWidget {
  ProviderHomeScreen({super.key});
  final TextEditingController dateFromcontroller = TextEditingController();
  final TextEditingController dateToController = TextEditingController();
  final TextEditingController governorateController = TextEditingController();

  final TextEditingController zoneController = TextEditingController();
  final TextEditingController priceFromContoller = TextEditingController();
  final TextEditingController priceToContoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const ProviderHomeDrawer(),
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: AppColors.defaultColor,
        title: const Text(
          "home",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HomeItemWidget(
              label: 'work today',
              onPressed: () {},
              nottifactionNubmer: '2',
            ),
            const VerticalSpace(2),
            HomeItemWidget(
              label: 'New orders',
              onPressed: () {},
              nottifactionNubmer: '2',
            ),
            const VerticalSpace(2),
            HomeItemWidget(
              label: 'Offers submitted',
              onPressed: () {},
              nottifactionNubmer: '2',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: const Color(0xffebf4f3),
            context: context,
            builder: (BuildContext context) {
              return Column(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 51,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: const BoxDecoration(
                      color: Color(0xff151b29),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Filter",
                              style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Cairo",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0),
                              textAlign: TextAlign.right),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(1),
                            decoration: const BoxDecoration(
                                color: Colors.red, shape: BoxShape.circle),
                            child: InkWell(
                                onTap: () {
                                  context.pop();
                                },
                                child: const Icon(
                                  Icons.close,
                                  size: 15,
                                  color: Colors.white,
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xffebf4f3),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Date',
                            style: TextStyle(
                              color: Color(0xff100f1d),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const VerticalSpace(1),
                          Row(
                            children: [
                              Expanded(
                                  child: CustomTextField(
                                controller: dateFromcontroller,
                                hintText: "From",
                                borderSideColor: Colors.white,
                              )),
                              const HorizontalSpace(3),
                              Expanded(
                                child: CustomTextField(
                                  controller: dateToController,
                                  borderSideColor: Colors.white,
                                  hintText: "To",
                                ),
                              )
                            ],
                          ),
                          const VerticalSpace(2),
                          CustomTextField(
                            controller: governorateController,
                            hintText: "Governorate",
                          ),
                          const VerticalSpace(2),
                          CustomTextField(
                            controller: zoneController,
                            hintText: "Zone",
                          ),
                          const VerticalSpace(2),
                          const Text(
                            'Shipping value',
                            style: TextStyle(
                              color: Color(0xff100f1d),
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const VerticalSpace(1.5),
                          Row(
                            children: [
                              Expanded(
                                  child: CustomTextField(
                                controller: priceFromContoller,
                                hintText: "From",
                              )),
                              const HorizontalSpace(3),
                              Expanded(
                                child: CustomTextField(
                                  controller: priceToContoller,
                                  hintText: "To",
                                ),
                              )
                            ],
                          ),
                          const VerticalSpace(1.5),
                          Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: CustomButton(
                                  text: 'save',
                                  onTap: () {},
                                  borderRadius: 10,
                                ),
                              ),
                              const HorizontalSpace(2),
                              Expanded(
                                flex: 1,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 8),
                                    decoration: BoxDecoration(
                                        color: AppColors.defaultColor,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: const Icon(
                                      Icons.refresh_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const VerticalSpace(2),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        backgroundColor: AppColors.defaultColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.science,
          color: Colors.white,
          size: SizeConfig.defaultSize * 4,
        ),
      ),
    );
  }
}
