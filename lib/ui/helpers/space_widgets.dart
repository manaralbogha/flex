import 'package:flex/ui/helpers/size_config.dart';
import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double value;
  const HorizontalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize * value,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  final double value;
  const VerticalSpace(this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize * value,
    );
  }
}
