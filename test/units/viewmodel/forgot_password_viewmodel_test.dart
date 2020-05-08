import 'package:flutter_starwars/app/presentation/viewmodel/forgot_password/forgot_password_viewmodel.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('passwords valids', () {
    test('passwords should be equals', () {
      setupLocator();
      ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
      vm.setPassword('1234');
      vm.setConfirmPassword('1234');
      expect(vm.passwordsAreEqual, true);
    });
    test('passwords should be different', () {
      setupLocator();
      ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
      vm.setPassword('1234');
      vm.setConfirmPassword('4321');
      expect(vm.passwordsAreEqual, false);
    });
  });
  group('step valids', () {
    test('step should be initialized with 1', () {
      setupLocator();
      ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
      expect(vm.step, 1);
    });
    test('step should be incremented', () {
      setupLocator();
      ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
      vm.next();
      expect(vm.step, 2);
    });
  });
  test('email mask should transform email correctly', () {
    setupLocator();
    ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
    expect(vm.maskEmail('joao.silva@gmail.com'), 'joa*******@gmail.com');
  });
  test('email should be changed', () {
    setupLocator();
    ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
    expect(vm.email, '');
    vm.setEmail('joao.silva@gmail.com');
    expect(vm.email, 'joao.silva@gmail.com');
  });
  test('reset code should be changed', () {
    setupLocator();
    ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
    expect(vm.resetCode, '');
    vm.setResetCode('A123M213ADOK#');
    expect(vm.resetCode, 'A123M213ADOK#');
  });
  test('password should be changed', () {
    setupLocator();
    ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
    expect(vm.password, '');
    vm.setPassword('123456');
    expect(vm.password, '123456');
  });
  test('confirm password should be changed', () {
    setupLocator();
    ForgotPasswordViewModel vm = new ForgotPasswordViewModel();
    expect(vm.confirmPassword, '');
    vm.setConfirmPassword('123456');
    expect(vm.confirmPassword, '123456');
  });
}
