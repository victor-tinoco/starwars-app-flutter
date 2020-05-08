import 'package:mobx/mobx.dart';
part 'choose_side_viewmodel.g.dart';

class ChooseSideViewModel = _ChooseSideViewModelBase with _$ChooseSideViewModel;

enum SideForce { dark, light }

abstract class _ChooseSideViewModelBase with Store {
  @observable
  SideForce selectedSide = SideForce.light;

  @action
  setSelectedSide(SideForce value) => selectedSide = value;
}
