import 'package:flutter/material.dart';
import 'package:tugas_angga/state_util.dart';

showSnackbar(String message) {
  final snackBar = SnackBar(
    content: Text(message),
  );
  ScaffoldMessenger.of(Get.currentContext).showSnackBar(snackBar);
}
