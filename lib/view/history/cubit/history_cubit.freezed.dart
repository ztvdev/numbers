// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState()';
}


}

/// @nodoc
class $HistoryStateCopyWith<$Res>  {
$HistoryStateCopyWith(HistoryState _, $Res Function(HistoryState) __);
}


/// @nodoc


class HistoryStateLoading implements HistoryState {
  const HistoryStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HistoryState.initial()';
}


}




/// @nodoc


class HistoryStateLoaded implements HistoryState {
  const HistoryStateLoaded({final  List<NumberModel> numbers = const []}): _numbers = numbers;
  

 final  List<NumberModel> _numbers;
@JsonKey() List<NumberModel> get numbers {
  if (_numbers is EqualUnmodifiableListView) return _numbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_numbers);
}


/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryStateLoadedCopyWith<HistoryStateLoaded> get copyWith => _$HistoryStateLoadedCopyWithImpl<HistoryStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryStateLoaded&&const DeepCollectionEquality().equals(other._numbers, _numbers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_numbers));

@override
String toString() {
  return 'HistoryState.loaded(numbers: $numbers)';
}


}

/// @nodoc
abstract mixin class $HistoryStateLoadedCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $HistoryStateLoadedCopyWith(HistoryStateLoaded value, $Res Function(HistoryStateLoaded) _then) = _$HistoryStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<NumberModel> numbers
});




}
/// @nodoc
class _$HistoryStateLoadedCopyWithImpl<$Res>
    implements $HistoryStateLoadedCopyWith<$Res> {
  _$HistoryStateLoadedCopyWithImpl(this._self, this._then);

  final HistoryStateLoaded _self;
  final $Res Function(HistoryStateLoaded) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? numbers = null,}) {
  return _then(HistoryStateLoaded(
numbers: null == numbers ? _self._numbers : numbers // ignore: cast_nullable_to_non_nullable
as List<NumberModel>,
  ));
}


}

/// @nodoc


class HistoryStateError implements HistoryState {
  const HistoryStateError({required this.error});
  

 final  Object error;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryStateErrorCopyWith<HistoryStateError> get copyWith => _$HistoryStateErrorCopyWithImpl<HistoryStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryStateError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'HistoryState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $HistoryStateErrorCopyWith<$Res> implements $HistoryStateCopyWith<$Res> {
  factory $HistoryStateErrorCopyWith(HistoryStateError value, $Res Function(HistoryStateError) _then) = _$HistoryStateErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$HistoryStateErrorCopyWithImpl<$Res>
    implements $HistoryStateErrorCopyWith<$Res> {
  _$HistoryStateErrorCopyWithImpl(this._self, this._then);

  final HistoryStateError _self;
  final $Res Function(HistoryStateError) _then;

/// Create a copy of HistoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(HistoryStateError(
error: null == error ? _self.error : error ,
  ));
}


}

// dart format on
