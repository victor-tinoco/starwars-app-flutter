import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_starwars/app/presentation/page/choose_side/widgets/choose_side_button.dart';
import 'package:flutter_starwars/app/presentation/page/choose_side/widgets/choose_side_subtitle.dart';
import 'package:flutter_starwars/app/presentation/page/choose_side/widgets/choose_side_toggle.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';

class ChooseSide extends StatefulWidget {
  ChooseSide({Key key}) : super(key: key);

  @override
  _ChooseSideState createState() => _ChooseSideState();
}

class _ChooseSideState extends State<ChooseSide> {
  final ChooseSideViewModel _viewModel = serviceLocator<ChooseSideViewModel>();

  @override
  Widget build(BuildContext context) {
    double screenWidht = MediaQuery.of(context).size.width;
    return Container(
      child: Observer(builder: (_) {
        return Scaffold(
          backgroundColor:
              _viewModel.selectedSide == SideForce.light ? lightBlue : darkBlue,
          body: SafeArea(
            child: Stack(children: [
              _viewModel.selectedSide == SideForce.light
                  ? Positioned(
                      top: 420 / 3,
                      right: -(screenWidht / 2.2),
                      child: Opacity(
                        opacity: OPACITY_90,
                        child: Image.asset(HAN_SOLO_PATH),
                      ),
                    )
                  : Positioned(
                      top: 420 / 4,
                      left: -(screenWidht / 2.8),
                      child: Opacity(
                        opacity: OPACITY_52,
                        child: Image.asset(DARTH_VADER_PATH),
                      ),
                    ),
              _viewModel.selectedSide == SideForce.light
                  ? Positioned(
                      top: 350 / 2.3,
                      left: -(screenWidht / 2.3),
                      child: Opacity(
                        opacity: OPACITY_76,
                        child: Image.asset(
                          IC_BLUE_RESISTENCE,
                          width: 350,
                          height: 350,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  : Positioned(
                      top: 350 / 2.1,
                      right: -(screenWidht / 2.2),
                      child: Opacity(
                          opacity: OPACITY_20,
                          child: Image.asset(
                            IC_RED_EMPIRE,
                            width: 350,
                            height: 350,
                            fit: BoxFit.fill,
                          )),
                    ),
              Container(
                width: screenWidht,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(flex: 1),
                    Container(
                      child: Image.asset(SPLASH_LOGO_PATH),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            blurRadius: TWENTY_FIVE_SIZE,
                            spreadRadius: NEGATIVE_SEVEN_SIZE,
                            color: _viewModel.selectedSide == SideForce.light
                                ? logoLightShadowColor
                                : logoDarkShadowColor,
                            offset: Offset(ZERO_SIZE, TWELVE_SIZE)),
                      ]),
                    ),
                    Spacer(flex: 1),
                    ChooseSideSubtitle(),
                    Spacer(flex: 2),
                    ChooseSideToggle(),
                    Spacer(flex: 2),
                    ChooseSideButton(),
                    Spacer(flex: 1)
                  ],
                ),
              ),
            ]),
          ),
        );
      }),
    );
  }
}
