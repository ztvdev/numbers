import 'package:http/http.dart' as http;
import 'package:numbers/core/utils.dart';
import 'package:numbers/data/models/number_model.dart';
import 'package:numbers/data/repository/storage_repository.dart';

class NumberRepository {
  Future<NumberModel> getNumber({required int number}) async {
    final url = Uri.parse('http://numbersapi.com/$number');

    final NumberModel? savedNumber = await StorageRepository()
        .getNumberByNumberFromStorage(number);

    if (savedNumber != null) {
      return savedNumber;
    }

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        NumberModel numberData = NumberModel(
          number: number,
          fact: response.body,
        );

        await StorageRepository().addNumberToStorage(numberData);
        return numberData;
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<NumberModel> getRandomFact() async {
    final url = Uri.parse('http://numbersapi.com/random/math');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        NumberModel numberData = NumberModel(
          number: extractNumber(response.body),
          fact: response.body,
        );

        await StorageRepository().addNumberToStorage(numberData);
        return numberData;
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<NumberModel>> getHistoryNumbers() async {
    return await StorageRepository().getNumbersFromStorage();
  }
}
