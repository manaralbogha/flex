import 'package:easy_localization/easy_localization.dart';
import 'package:flex/bloc_observer.dart';
import 'package:flex/domain/remote/dio_helper.dart';
import 'package:flex/my_app.dart';
import 'package:flex/translations/codegen_loader.g.dart';
import 'package:flex/ui/helpers/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
}
