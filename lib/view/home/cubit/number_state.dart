part of 'number_cubit.dart';

@freezed
class NumberState with _$NumberState {
  const factory NumberState.initial({@Default(null) NumberModel? numberData}) =
      NumberStateLoading;
  const factory NumberState.loaded({@Default(null) int? number}) =
      NumberStateLoaded;
  const factory NumberState.error({required Object error}) = NumberStateError;
}
