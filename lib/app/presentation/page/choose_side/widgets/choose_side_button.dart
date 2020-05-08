import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/routes.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class ChooseSideButton extends StatelessWidget {
  final ChooseSideViewModel _viewModel = serviceLocator<ChooseSideViewModel>();

  ChooseSideButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 165,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: _viewModel.selectedSide == SideForce.light
                ? highlightBlue
                : errorRed,
            blurRadius: TWENTY_SIZE,
            spreadRadius: NEGATIVE_TEN_SIZE,
            offset: Offset(ZERO_SIZE, FIVETEEN_SIZE))
      ]),
      child: RaisedButton(
        child: Text(
          CHOOSE_SIDE_TEXT,
          style: TextStyle(
              fontFamily: FONT_SF_DISPLAY_PRO,
              fontWeight: FontWeight.bold,
              letterSpacing: LETTER_SPACING_38,
              fontSize: MAIN_FONT_SIZE),
        ),
        textColor: grey255,
        disabledTextColor: grey255,
        color: _viewModel.selectedSide == SideForce.light
            ? highlightBlue
            : errorRed,
        disabledColor: errorRed,
        elevation: ZERO_SIZE,
        onPressed: () => Navigator.pushNamed(context, Routes.swList),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius22,
        ),
      ),
    );
  }
}
