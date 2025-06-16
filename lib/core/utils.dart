int extractNumber(String text) {
  final match = RegExp(r'^\d+').firstMatch(text);
  final matchText = match?.group(0) ?? '';
  return int.tryParse(matchText) ?? 0;
}
