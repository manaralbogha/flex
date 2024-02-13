// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "email_or_mobile_number": "البريد الالكتروني او رقم الموبايل",
  "password": "كلمة المرور",
  "forgot_your_password": "نسيت كلمة المرور",
  "login": "تسجيل الدخول",
  "dont_have_an_account": "ليس لديك حساب؟",
  "create": "تسجيل",
  "name": "الاسم",
  "phone": "رقم الهاتف ",
  "email": "البريد الالكتروني",
  "confirm_password": "تاكيد كلمة المرور",
  "register": "تسجيل",
  "do_you_have_an_account": "هل لديك حساب؟"
};
static const Map<String,dynamic> en = {
  "email_or_mobile_number": "Email or mobile number",
  "password": "Password",
  "forgot_your_password": "Forgot your password",
  "login": "LOGIN",
  "dont_have_an_account": "Don’t have an account?",
  "create": "Create",
  "name": "Name",
  "phone": "Phone",
  "email": "E-mail",
  "confirm_password": "Confirm Password",
  "register": "SIGN UP",
  "do_you_have_an_account": "Do you have an account?"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
