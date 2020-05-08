import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/dimens.dart';

class StarwarsListAppBar extends StatelessWidget {
  final ChooseSideViewModel _chooseSideViewModel =
      serviceLocator<ChooseSideViewModel>();

  StarwarsListAppBar({
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
            child: Image.asset(
                _chooseSideViewModel.selectedSide == SideForce.light
                    ? IC_BACK_GREEN_PATH
                    : IC_BACK_RED_PATH),
            onTap: () => Navigator.pop(context),
          ),
          Image.asset(
              _chooseSideViewModel.selectedSide == SideForce.light
                  ? IC_HIGHLIGHTBLUE_RESISTENCE
                  : IC_RED_EMPIRE,
              height: 30,
              width: 30),
          Opacity(
              opacity: 0,
              child: Image.asset(
                  _chooseSideViewModel.selectedSide == SideForce.light
                      ? IC_BACK_GREEN_PATH
                      : IC_BACK_RED_PATH)),
        ],
      ),
    );
  }
}
