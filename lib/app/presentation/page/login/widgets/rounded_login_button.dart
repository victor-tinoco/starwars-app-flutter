import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/login/login_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/routes.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class RoundedLoginButton extends StatelessWidget {
  RoundedLoginButton({
    Key key,
  }) : super(key: key);

  final LoginViewModel _viewModel = serviceLocator<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.0,
      height: 44.0,
      child: RaisedButton(
        color: yellowButtonLogin,
        textColor: grey33,
        elevation: ZERO_SIZE,
        splashColor: Colors.transparent,
        child: Text(
          LOGIN_BUTTON_TEXT,
          style: TextStyle(
            fontSize: MAIN_FONT_SIZE,
            fontFamily: FONT_SF_DISPLAY_PRO,
            letterSpacing: LETTER_SPACING_38,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () async => await _viewModel.login() == true
            ? Navigator.pushReplacementNamed(context, Routes.chooseSide)
            : null,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius22,
        ),
      ),
    );
  }
}
