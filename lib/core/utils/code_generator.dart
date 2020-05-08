import 'dart:math';

String generateRandomWarriorCode() {
  var rng = new Random();
  String code = '#';
  for (var i = 0; i < 6; i++) {
    code = '$code${rng.nextInt(10)}';
  }
  return code;
}
