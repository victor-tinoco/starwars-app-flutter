import 'package:flutter/material.dart';
import 'package:flutter_starwars/app/presentation/page/starwars_list/widgets/starwars_list_appbar.dart';
import 'package:flutter_starwars/app/presentation/page/starwars_list/widgets/starwars_list_builder.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/starwars_list/starwars_list_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/values/colors.dart';

class StarWarsList extends StatefulWidget {
  StarWarsList({Key key}) : super(key: key);

  @override
  _StarWarsListState createState() => _StarWarsListState();
}

class _StarWarsListState extends State<StarWarsList> {
  StarWarsListViewModel _viewModel = new StarWarsListViewModel();
  ChooseSideViewModel _chooseSideViewModel =
      serviceLocator<ChooseSideViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _chooseSideViewModel.selectedSide == SideForce.light
          ? grey255
          : darkBlue,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              StarwarsListAppBar(),
              WarriosListBuild(viewModel: _viewModel),
            ],
          ),
        ),
      ),
    );
  }
}
