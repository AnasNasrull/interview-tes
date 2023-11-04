import 'package:flutter/material.dart';
import 'package:tugas_angga/core.dart';
import 'package:tugas_angga/state_util.dart';

class WelcomeController extends State<WelcomeView> {
  static late WelcomeController instance;
  late WelcomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogin() {
    Get.to(const LoginView());
  }
}
