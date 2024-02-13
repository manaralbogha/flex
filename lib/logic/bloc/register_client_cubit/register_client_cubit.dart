import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'register_client_state.dart';

class RegisterClientCubit extends Cubit<RegisterClientState> {
  RegisterClientCubit() : super(RegisterClientInitial());

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  String? city;
  String? region;
}
