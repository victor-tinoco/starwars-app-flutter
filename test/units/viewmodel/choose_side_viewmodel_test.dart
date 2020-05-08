import 'package:flutter_starwars/app/presentation/viewmodel/choose_side/choose_side_viewmodel.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('side should be initialized with light side', () {
    ChooseSideViewModel vm = new ChooseSideViewModel();
    expect(vm.selectedSide, SideForce.light);
  });

  test('side should be selected with dark side', () {
    ChooseSideViewModel vm = new ChooseSideViewModel();
    vm.setSelectedSide(SideForce.dark);
    expect(vm.selectedSide, SideForce.dark);
  });
}
