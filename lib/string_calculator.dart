class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    String numbersPart = numbers;
    String delimiterPattern = ',|\n';

    if (numbers.startsWith('//')) {
      final lines = numbers.split('\n');
      final delimiter = lines.first.substring(2);

      delimiterPattern = RegExp.escape(delimiter);
      numbersPart = lines.sublist(1).join('\n');
    }

    final parts = numbersPart.split(RegExp(delimiterPattern));

    int sum = 0;
    for (final p in parts) {
      sum += int.parse(p);
    }

    return sum;
  }
}
