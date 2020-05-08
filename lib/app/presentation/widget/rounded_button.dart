import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/fonts.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const RoundedButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 165.0,
      height: 44.0,
      child: OutlineButton(
        onPressed: onPressed,
        textColor: yellowButtonRegister,
        disabledTextColor: grey117,
        disabledBorderColor: grey117,
        splashColor: Colors.transparent,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontFamily: FONT_SF_DISPLAY_PRO,
            letterSpacing: 0.38,
            fontWeight: FontWeight.bold,
          ),
        ),
        borderSide: BorderSide(
          color: yellowButtonRegister,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(22.0),
        ),
      ),
    );
  }
}
