import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';

class ChooseSideLineToggle extends StatelessWidget {
  final ChooseSideViewModel _viewModel = serviceLocator<ChooseSideViewModel>();

  ChooseSideLineToggle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 132.5,
      decoration: BoxDecoration(
        borderRadius: borderRadius22,
        boxShadow: [
          BoxShadow(
            color: _viewModel.selectedSide == SideForce.light
                ? gradientBlue1
                : gradientRed1,
            blurRadius: ELEVEN_SIZE,
            spreadRadius: TWO_SIZE,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: _viewModel.selectedSide == SideForce.light
              ? [
                  gradientBlue1,
                  gradientBlue2,
                  gradientBlue1,
                ]
              : [
                  gradientRed1,
                  gradientRed2,
                  gradientRed1,
                ],
        ),
      ),
    );
  }
}
