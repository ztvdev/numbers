import 'dart:convert';

import 'package:numbers/data/models/number_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageRepository {
  static const _storageKey = 'number_model_list';

  Future<List<NumberModel>> addNumberToStorage(NumberModel newNumber) async {
    final prefs = await SharedPreferences.getInstance();

    final List<String> storedList = prefs.getStringList(_storageKey) ?? [];

    List<NumberModel> currentList = storedList
        .map((jsonStr) => NumberModel.fromJson(jsonDecode(jsonStr)))
        .toList();

    final exists = currentList.any(
      (element) => element.number == newNumber.number,
    );

    if (!exists) {
      currentList.add(newNumber);

      final List<String> jsonList = currentList
          .map((model) => jsonEncode(model.toJson()))
          .toList();

      await prefs.setStringList(_storageKey, jsonList);
    }

    return currentList;
  }

  Future<List<NumberModel>> getNumbersFromStorage() async {
    final prefs = await SharedPreferences.getInstance();

    final List<String> storedList = prefs.getStringList(_storageKey) ?? [];

    return storedList
        .map((jsonStr) => NumberModel.fromJson(jsonDecode(jsonStr)))
        .toList();
  }

  Future<NumberModel?> getNumberByNumberFromStorage(int number) async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> storedList = prefs.getStringList(_storageKey) ?? [];

    for (final jsonStr in storedList) {
      final model = NumberModel.fromJson(jsonDecode(jsonStr));
      if (model.number == number) {
        return model;
      }
    }

    return null;
  }
}
