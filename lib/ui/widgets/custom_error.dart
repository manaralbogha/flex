import 'package:flex/ui/helpers/size_config.dart';
import 'package:flex/ui/helpers/space_widgets.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: SizeConfig.defaultSize * 40,
        height: SizeConfig.defaultSize * 25,
        child: Card(
          elevation: 10,
          color: Colors.red.shade200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text(
                "Something Went Wrong, Please Try Again !!!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: SizeConfig.defaultSize * 3,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const VerticalSpace(1),
              InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: onTap,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.replay_outlined,
                    size: SizeConfig.defaultSize * 10,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
