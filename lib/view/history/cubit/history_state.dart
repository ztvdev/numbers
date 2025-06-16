part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = HistoryStateLoading;
  const factory HistoryState.loaded({required List<NumberModel> numbers}) =
      HistoryStateLoaded;
  const factory HistoryState.error({required Object error}) = HistoryStateError;
}
