import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/fonts.dart';

class ErrorBox extends StatelessWidget {
  final String errorText;
  final double boxOpacity; // should be from 0.0 to 1.0

  const ErrorBox({
    Key key,
    this.errorText,
    this.boxOpacity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: boxOpacity ?? 1,
      child: Container(
        decoration: BoxDecoration(
            color: grey23,
            borderRadius: BorderRadius.all(Radius.circular(11)),
            border: Border.all(
              color: errorRed,
            ),
            boxShadow: [BoxShadow(color: errorRed, blurRadius: 10)]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: Image.asset(IC_ALERT_PATH),
              ),
              Text(
                errorText,
                style: TextStyle(
                  fontSize: 11,
                  fontFamily: FONT_SF_DISPLAY_PRO,
                  letterSpacing: .13,
                  color: errorRed,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
