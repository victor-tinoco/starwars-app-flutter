import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';
import 'package:flutter_starwars/core/values/strings.dart';

class ChooseSideSubtitle extends StatelessWidget {
  final ChooseSideViewModel _viewModel = serviceLocator<ChooseSideViewModel>();

  ChooseSideSubtitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      child: Text(
        CHOOSE_SIDE_SUBTITLE,
        textAlign: TextAlign.center,
        style: TextStyle(
          color:
              _viewModel.selectedSide == SideForce.light ? darkBlue : grey186,
          fontFamily: FONT_AVENIR,
          fontWeight: FontWeight.bold,
          letterSpacing: LETTER_SPACING_21,
          fontSize: CHOOSESIDE_SUBTITLE_FONT_SIZE,
        ),
      ),
    );
  }
}
