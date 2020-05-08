import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/page/choose_side/widgets/choose_side_line_toggle.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/assets.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';

class ChooseSideToggle extends StatefulWidget {
  ChooseSideToggle({
    Key key,
  }) : super(key: key);

  @override
  _ChooseSideToggleState createState() => _ChooseSideToggleState();
}

class _ChooseSideToggleState extends State<ChooseSideToggle>
    with SingleTickerProviderStateMixin {
  final ChooseSideViewModel _viewModel = serviceLocator<ChooseSideViewModel>();

  Animation<Alignment> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 350));

    _animation = Tween<Alignment>(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.bounceOut,
      reverseCurve: Curves.bounceIn,
    ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: Image.asset(
                _viewModel.selectedSide == SideForce.light
                    ? RESISTENCE_WITH_BG
                    : RESISTENCE_WITH_BG_DARK,
                height: 80,
                width: 80,
              ),
              onTap: () {
                if (_animationController.isCompleted) {
                  _animationController.reverse();
                  Future.delayed(Duration(milliseconds: 175),
                      () => _viewModel.setSelectedSide(SideForce.light));
                }
              },
            ),
            SizedBox(width: 57),
            GestureDetector(
              child: Image.asset(
                _viewModel.selectedSide == SideForce.dark
                    ? EMPIRE_WITH_BG
                    : EMPIRE_WITH_BG_DARK,
                height: 80,
                width: 80,
              ),
              onTap: () {
                if (!_animationController.isCompleted) {
                  _animationController.forward();
                  Future.delayed(Duration(milliseconds: 175),
                      () => _viewModel.setSelectedSide(SideForce.dark));
                }
              },
            ),
          ],
        ),
        SizedBox(height: 32.5),
        Container(
          width: 265,
          height: 4,
          decoration: BoxDecoration(
            color: chooseSideLineToggleBG,
            borderRadius: borderRadius4,
          ),
          child: Stack(
            children: [
              AnimatedBuilder(
                animation: _animationController,
                builder: (animation, child) {
                  return Align(
                    alignment: _animation.value,
                    child: ChooseSideLineToggle(),
                  );
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
