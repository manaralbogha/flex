import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flex/ui/helpers/app_colors.dart';
import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ProviderRates extends StatelessWidget {
  const ProviderRates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rates "),
      ),
      body: Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize * 2.2),
          child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border:
                          Border.all(color: const Color(0xffebedf1), width: 1),
                      color: const Color(0xffffffff)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: SizeConfig.defaultSize * 5,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.defaultSize * 1.2,
                              vertical: SizeConfig.defaultSize / 3),
                          decoration: const BoxDecoration(
                              color: Color(0xff151b29),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5))),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundImage: AssetImage(
                                AppAssets.avatar,
                              )),
                              const HorizontalSpace(1.1),
                              const Text(
                                "Mohamed",
                                style: TextStyle(color: Colors.white),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.defaultColor,
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.all(
                                    SizeConfig.defaultSize / 2.5),
                                child: Icon(
                                  Icons.email_outlined,
                                  size: SizeConfig.defaultSize * 2,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.defaultSize,
                            vertical: SizeConfig.defaultSize / 1.3),
                        child: SmoothStarRating(
                          rating: 4,
                          color: AppColors.defaultColor,
                          onRatingChanged: (value) {},
                        ),
                      ),
                    ],
                  ));
            },
            separatorBuilder: (BuildContext context, int index) =>
                const VerticalSpace(2),
            itemCount: 10,
          )),
    );
  }
}
