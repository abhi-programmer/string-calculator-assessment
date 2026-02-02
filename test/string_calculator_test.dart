import 'package:test/test.dart';
import 'package:string_calculator/string_calculator.dart';

void main() {
  test('empty string returns 0', () {
    final calc = StringCalculator();
    expect(calc.add(''), 0);
  });

  test('single number returns the number', () {
    final calc = StringCalculator();
    expect(calc.add('1'), 1);
  });

  test('two numbers return their sum', () {
    final calc = StringCalculator();
    expect(calc.add('1,5'), 6);
  });

  test('multiple numbers return their sum', () {
    final calc = StringCalculator();
    expect(calc.add('1,2,3,4'), 10);
  });

  test('numbers separated by new line and comma', () {
    final calc = StringCalculator();
    expect(calc.add('1\n2,3'), 6);
  });
}
