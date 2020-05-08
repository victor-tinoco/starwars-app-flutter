import 'package:flutter_starwars/core/utils/code_generator.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('should return code with 7 characteres and 1st should be a hashtag', () {
    String code = generateRandomWarriorCode();
    expect(code.length, 7);
    expect(code[0], '#');
  });
}
