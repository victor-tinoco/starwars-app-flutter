import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class SignUpAppBar extends StatelessWidget {
  const SignUpAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: appBarPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: yellowButtonRegister,
            ),
            onTap: () => Navigator.pop(context),
          ),
          Text(
            SIGNUP_PAGE_TITLE,
            style: TextStyle(
                color: grey117,
                fontFamily: FONT_SF_DISPLAY_PRO,
                fontWeight: FontWeight.w500,
                fontSize: TITLE_FONT_SIZE),
          ),
          Opacity(
            opacity: ZERO_SIZE,
            child: Icon(
              Icons.arrow_back_ios,
              color: yellowButtonRegister,
            ),
          ),
        ],
      ),
    );
  }
}
