import 'package:flutter/material.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';

class RedLine extends StatelessWidget {
  const RedLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 86,
      decoration: BoxDecoration(
        borderRadius: borderRadius4,
        boxShadow: [
          BoxShadow(
            color: gradientRedLine1,
            blurRadius: SIX_SIZE,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            gradientRedLine1,
            gradientRedLine2,
            gradientRedLine1,
          ],
        ),
      ),
    );
  }
}
