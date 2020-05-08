import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/domain/model/poke.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/warrior_details/warrior_details_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';
import 'package:flutter_starwars/core/values/fonts.dart';

class WarriorDetails extends StatefulWidget {
  final Poke warrior;

  WarriorDetails({Key key, @required this.warrior}) : super(key: key);

  @override
  _WarriorDetailsState createState() => _WarriorDetailsState();
}

class _WarriorDetailsState extends State<WarriorDetails> {
  final ChooseSideViewModel _chooseSideViewModel =
      serviceLocator<ChooseSideViewModel>();
  final WarriorDetailsViewModel _viewModel = WarriorDetailsViewModel();

  @override
  void initState() {
    _viewModel.setWarrior(widget.warrior);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: _chooseSideViewModel.selectedSide == SideForce.light
              ? Colors.white
              : grey33,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
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
                      Opacity(
                          opacity: ZERO_SIZE,
                          child: Image.asset(
                              _chooseSideViewModel.selectedSide ==
                                      SideForce.light
                                  ? IC_BACK_GREEN_PATH
                                  : IC_BACK_RED_PATH)),
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 3),
                Container(
                  padding: paddingHorizontal30,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _viewModel.warrior.name.toUpperCase(),
                        style: TextStyle(
                          fontFamily: FONT_AVENIR,
                          fontWeight: FontWeight.bold,
                          fontSize: FONT_SIZE_28,
                          letterSpacing: LETTER_SPACING_33,
                          color: _chooseSideViewModel.selectedSide ==
                                  SideForce.light
                              ? darkBlue
                              : grey255,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        _viewModel.warrior.code.toUpperCase(),
                        style: TextStyle(
                          fontFamily: FONT_AVENIR,
                          fontSize: FONT_SIZE_23,
                          letterSpacing: LETTER_SPACING_28,
                          color: _chooseSideViewModel.selectedSide ==
                                  SideForce.light
                              ? warriorDetailsTitleLight
                              : warriorDetailsTitleDark,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 3,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius4,
                          color: warriorDetailsRedColor,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
