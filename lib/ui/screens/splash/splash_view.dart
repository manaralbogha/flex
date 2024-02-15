import 'dart:async';

import 'package:flex/logic/core/app_router.dart';
import 'package:flex/ui/helpers/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      _navigateToNextView();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Center(
        child: Image(image: AssetImage(AppAssets.logo)),
      ),
    );
  }

  void _navigateToNextView() async {
    // final String? lang = await CacheHelper.getData(key: "lang");
    // final String? token = await CacheHelper.getData(key: "token");
    // log(lang.toString());
    bool x = false;
    if (x == false) {
      context.pushReplacement(AppRouter.kHomeClientView);
    } else {
      context.pushReplacement(AppRouter.kChooseUserView);
    }
  }
}
