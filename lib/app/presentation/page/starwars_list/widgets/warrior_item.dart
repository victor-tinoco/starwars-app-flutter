import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/domain/model/poke.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/routes.dart';

class WarriorItem extends StatelessWidget {
  const WarriorItem({
    Key key,
    @required this.warrior,
    @required this.side,
  }) : super(key: key);

  final Poke warrior;
  final SideForce side;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88.0,
      margin: warriorItemMargin,
      padding: warriorItemPadding,
      child: Center(
        child: ListTile(
          onTap: () =>
              Navigator.pushNamed(context, Routes.details, arguments: warrior),
          title: Padding(
            padding: listTileWarriorItemPadding,
            child: Text(
              warrior.name.toUpperCase(),
              style: TextStyle(
                  fontFamily: FONT_AVENIR,
                  fontWeight: FontWeight.bold,
                  fontSize: TITLE_FONT_SIZE,
                  letterSpacing: LETTER_SPACING_24,
                  color: side == SideForce.light ? grey100 : grey209),
            ),
          ),
          subtitle: Text(
            warrior.code,
            style: TextStyle(
                fontFamily: FONT_AVENIR,
                fontSize: MAIN_FONT_SIZE,
                letterSpacing: LETTER_SPACING_18,
                color: side == SideForce.light ? grey157 : grey199),
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: borderRadius18,
        gradient: LinearGradient(
          begin: Alignment(-1.0, -4.0),
          end: Alignment(1.0, 4.0),
          colors: side == SideForce.light
              ? [gradientLightWarriorItem1, gradientLightWarriorItem2]
              : [
                  errorRed,
                  grey31,
                ],
          stops: [0.5, 1],
        ),
        boxShadow: [
          BoxShadow(
            color: side == SideForce.light ? grey199 : grey31,
            blurRadius: TWENTY_SIZE,
            offset: Offset(ZERO_SIZE, THIRTY_SIZE),
            spreadRadius: NEGATIVE_TWENTY_SIZE,
          )
        ],
      ),
    );
  }
}
