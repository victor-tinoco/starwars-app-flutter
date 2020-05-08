import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/page/forgot_password/forgot_password.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        LOGIN_FORGOT_PASSWORD_GESTURE_TEXT,
        style: TextStyle(
          color: grey235,
          fontFamily: FONT_SF_DISPLAY_PRO,
          fontWeight: FontWeight.w500,
          letterSpacing: LETTER_SPACING_21,
        ),
      ),
      onTap: () async {
        await ForgotPassword().showBottomSheet(context);
      },
    );
  }
}
