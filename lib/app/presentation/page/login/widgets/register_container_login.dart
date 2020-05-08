import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/routes.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class RegisterContainer extends StatelessWidget {
  const RegisterContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      width: MediaQuery.of(context).size.width,
      color: greyRegisterContainerLogin,
      child: GestureDetector(
        child: Center(
          child: RichText(
            text: TextSpan(
              text: '$LOGIN_REGISTER_GESTURE_TEXT_REGULAR ',
              children: [
                TextSpan(
                    text: LOGIN_REGISTER_GESTURE_TEXT_BOLD,
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
              style: TextStyle(
                color: grey227,
                fontFamily: FONT_SF_DISPLAY_PRO,
                fontWeight: FontWeight.w500,
                letterSpacing: LETTER_SPACING_24,
                fontSize: MAIN_FONT_SIZE,
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pushNamed(context, Routes.signUp);
        },
      ),
    );
  }
}
