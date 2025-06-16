import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:numbers/data/models/number_model.dart';
import 'package:numbers/data/repository/number_repository.dart';

part 'number_cubit.freezed.dart';
part 'number_state.dart';

class NumberCubit extends Cubit<NumberState> {
  final NumberRepository _numberRepository;
  NumberCubit({required NumberRepository numberRepository})
    : _numberRepository = numberRepository,
      super(NumberState.initial());

  void init() {
    emit(NumberState.loaded());
  }

  void getNumberFact() async {
    if (state is NumberStateLoaded) {
      final currentState = state as NumberStateLoaded;

      if (currentState.number != null) {
        emit(NumberState.initial());
        try {
          NumberModel numberData = await _numberRepository.getNumber(
            number: currentState.number!,
          );
          emit(NumberState.initial(numberData: numberData));
        } catch (e) {
          emit(NumberState.error(error: e));
          emit(currentState);
        }
      }
    }
  }

  void getRandomNumberFact() async {
    if (state is NumberStateLoaded) {
      final currentState = state as NumberStateLoaded;
      emit(NumberState.initial());
      try {
        NumberModel numberData = await _numberRepository.getRandomFact();
        emit(NumberState.initial(numberData: numberData));
      } catch (e) {
        emit(NumberState.error(error: e));
        emit(currentState);
      }
    }
  }

  void enterNumber(String value) {
    if (state is NumberStateLoaded) {
      final currentState = state as NumberStateLoaded;
      emit(currentState.copyWith(number: int.tryParse(value)));
    }
  }
}
