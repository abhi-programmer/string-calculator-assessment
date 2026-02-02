class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final parts = numbers.split(',');

    int sum = 0;
    for (final p in parts) {
      sum += int.parse(p);
    }

    return sum;
  }
}
