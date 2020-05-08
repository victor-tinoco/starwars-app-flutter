import 'package:flutter_starwars/app/presentation/viewmodel/login/login_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('email valids', () {
    setupLocator();
    test('should be return invalid email', () {
      LoginViewModel vm = new LoginViewModel();
      expect(vm.hasErrorOnEmail, false);
      expect(vm.boxError, 0);
      vm.validateEmail('joao.silva');
      expect(vm.hasErrorOnEmail, true);
      expect(vm.boxError, 1);
    });
    test('should be return valid email', () {
      LoginViewModel vm = new LoginViewModel();
      expect(vm.hasErrorOnEmail, false);
      expect(vm.boxError, 0);
      vm.validateEmail('joao.silva@gmail.com');
      expect(vm.hasErrorOnEmail, false);
      expect(vm.boxError, 0);
    });
  });
  group('password valids', () {
    setupLocator();
    test('should be return invalid password', () {
      LoginViewModel vm = new LoginViewModel();
      expect(vm.hasErrorOnPassword, false);
      expect(vm.boxError, 0);
      vm.validatePassword('12345');
      expect(vm.hasErrorOnPassword, true);
      expect(vm.boxError, 1);
    });
    test('should be return valid password', () {
      LoginViewModel vm = new LoginViewModel();
      expect(vm.hasErrorOnPassword, false);
      expect(vm.boxError, 0);
      vm.validatePassword('123456');
      expect(vm.hasErrorOnPassword, false);
      expect(vm.boxError, 0);
    });
  });
}
