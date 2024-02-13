import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_client_state.dart';

class LoginClientCubit extends Cubit<LoginClientState> {
  LoginClientCubit() : super(LoginClientInitial());

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
}
