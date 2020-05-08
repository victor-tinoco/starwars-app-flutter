import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/widget/login_module_textfield.dart';

bool loginTextFieldMatcher({Widget widget, String hint, TextFieldLayout layout}) {
  if (widget is LoginModuleTextField) {
    return widget.hintText == hint && widget.textFieldLayout == layout;
  }
  return false;
}