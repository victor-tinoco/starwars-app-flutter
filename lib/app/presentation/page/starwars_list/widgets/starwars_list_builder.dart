import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_starwars/app/presentation/page/starwars_list/widgets/warrior_item.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/starwars_list/starwars_list_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/colors.dart';
import 'package:flutter_starwars/core/values/dimens.dart';

class WarriosListBuild extends StatelessWidget {
  final StarWarsListViewModel viewModel;
  final ChooseSideViewModel _chooseSideViewModel =
      serviceLocator<ChooseSideViewModel>();

  WarriosListBuild({
    @required this.viewModel,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final side = _chooseSideViewModel.selectedSide;
    viewModel.fetchStarWarsList();
    return Expanded(
      child: Observer(
        builder: (BuildContext context) {
          return viewModel.list == null
              ? Center(
                  child: CircularProgressIndicator(
                      backgroundColor:
                          _chooseSideViewModel.selectedSide == SideForce.light
                              ? highlightBlue
                              : errorRed),
                )
              : AnimationLimiter(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: paddingAll8,
                    itemCount: viewModel.list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 700),
                        child: SlideAnimation(
                          verticalOffset: 44.0,
                          child: FadeInAnimation(
                            child: WarriorItem(
                                warrior: viewModel.list[index], side: side),
                          ),
                        ),
                      );
                    },
                  ),
                );
        },
      ),
    );
  }
}
