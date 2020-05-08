import 'package:flutter_starwars/app/domain/model/poke.dart';
import 'package:flutter_starwars/app/domain/usecase/warrior_usecase.dart';
import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_starwars/core/remote/http_code.dart';
import 'package:mobx/mobx.dart';
part 'starwars_list_viewmodel.g.dart';

class StarWarsListViewModel = _StarWarsListViewModelBase
    with _$StarWarsListViewModel;

abstract class _StarWarsListViewModelBase with Store {
  final ChooseSideViewModel _chooseSideViewModel =
      serviceLocator<ChooseSideViewModel>();
  final WarriorUseCase _usecase = WarriorUseCase();

  @observable
  List<Poke> list;

  @action
  setList(List<Poke> value) => list = value;

  fetchStarWarsList() async {
    setList(null);

    final response = await _usecase.warriors();

    if (response.status == HttpCode.SUCCESS) {
      String side = _chooseSideViewModel.selectedSide == SideForce.light
          ? 'RESISTENCE'
          : 'EMPIRE';
      List<Poke> responseList = response.data as List<Poke>;
      setList(responseList.where((e) => e.faction == side).toList());
    }
  }
}
