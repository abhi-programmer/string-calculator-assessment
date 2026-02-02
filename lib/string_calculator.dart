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

    final values = parts.map(int.parse).toList();

    final negatives = values.where((e) => e < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }

    return values.fold(0, (a, b) => a + b);
  }
}
