import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/data/models/number_model.dart';
import 'package:numbers/data/repository/number_repository.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  final NumberRepository _numberRepository;
  HistoryCubit({required NumberRepository numberRepository})
    : _numberRepository = numberRepository,
      super(HistoryState.initial());

  Future<void> getNumbers() async {
    try {
      List<NumberModel> numberList = await _numberRepository
          .getHistoryNumbers();
      emit(HistoryState.loaded(numbers: numberList.reversed.toList()));
    } catch (e) {
      emit(HistoryState.error(error: e));
      emit(HistoryState.loaded(numbers: []));
    }
  }
}
