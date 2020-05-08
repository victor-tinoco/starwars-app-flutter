import 'package:flutter_starwars/app/domain/usecase/auth_usecase.dart';
import 'package:flutter_starwars/core/di/service_locator.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('email validation', () {
    test('should return false cause dont have @', () {
      setupLocator();
      String email = 'joao.silva';
      expect(() => AuthUseCase().emailIsValid(email), false);
    });
    test('should return true cause is a valid email', () {
      setupLocator();
      String email = 'joao.silva@gmail.com';
      expect(() => AuthUseCase().emailIsValid(email), true);
    });
  });

  group('password validation', () {
    test('should return false cause value is not greater than 5 characteres',
        () {
      setupLocator();
      String pswd = '12345';
      expect(() => AuthUseCase().passwordIsValid(pswd), false);
    });
    test('should return true cause is a valid password', () {
      setupLocator();
      String pswd = '123456';
      expect(() => AuthUseCase().passwordIsValid(pswd), false);
    });
  });
}
