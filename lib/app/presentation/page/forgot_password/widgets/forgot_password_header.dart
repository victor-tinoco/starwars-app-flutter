import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class ForgotPasswordHeader extends StatelessWidget {
  const ForgotPasswordHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shadowColor: Colors.black,
      color: grey33,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 29,
            vertical: 22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                child: Icon(
                  Icons.close,
                  color: grey117,
                ),
                onTap: () => Navigator.pop(context),
              ),
              Text(
                FORGOT_PASSWORD_PAGE_TITLE,
                style: TextStyle(
                  fontFamily: FONT_SF_DISPLAY_PRO,
                  fontWeight: FontWeight.bold,
                  fontSize: TITLE_FONT_SIZE,
                  letterSpacing: LETTER_SPACING_3,
                  color: grey209,
                ),
              ),
              Opacity(
                opacity: 0,
                child: Icon(Icons.close),
              )
            ],
          ),
        ),
      ),
    );
  }
}
