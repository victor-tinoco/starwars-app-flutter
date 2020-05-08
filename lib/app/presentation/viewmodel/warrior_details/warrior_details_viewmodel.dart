import 'package:flutter_starwars/app/domain/model/poke.dart';
import 'package:mobx/mobx.dart';
part 'warrior_details_viewmodel.g.dart';

class WarriorDetailsViewModel = _WarriorDetailsViewModelBase
    with _$WarriorDetailsViewModel;

abstract class _WarriorDetailsViewModelBase with Store {
  @observable
  Poke warrior;
  @action
  setWarrior(Poke value) => warrior = value;
}
