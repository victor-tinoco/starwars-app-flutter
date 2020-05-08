import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';

class SignUpSubtitle extends StatelessWidget {
  final String text;

  const SignUpSubtitle({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Text(
        text,
        style: TextStyle(
          color: grey177,
          fontSize: MAIN_FONT_SIZE,
          fontFamily: FONT_SF_DISPLAY_PRO,
          fontWeight: FontWeight.w500,
          letterSpacing: LETTER_SPACING_24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
