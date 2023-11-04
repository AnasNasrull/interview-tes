import 'package:flutter/material.dart';
import 'package:tugas_angga/core.dart';
import 'package:tugas_angga/service/auth_service/auth_service.dart';
import 'package:tugas_angga/shared/util/show_snackbar.dart';
import 'package:tugas_angga/state_util.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;

  doLogin() async {
    bool isSuccess = await AuthService().login(
      email: email!,
      password: password!,
    );

    if (!isSuccess) {
      showSnackbar("Wrong email or password");
      return;
    }

    Get.to(const HomeView());
  }
}
