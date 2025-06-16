// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NumberState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NumberState()';
}


}

/// @nodoc
class $NumberStateCopyWith<$Res>  {
$NumberStateCopyWith(NumberState _, $Res Function(NumberState) __);
}


/// @nodoc


class NumberStateLoading implements NumberState {
  const NumberStateLoading({this.numberData = null});
  

@JsonKey() final  NumberModel? numberData;

/// Create a copy of NumberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberStateLoadingCopyWith<NumberStateLoading> get copyWith => _$NumberStateLoadingCopyWithImpl<NumberStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberStateLoading&&(identical(other.numberData, numberData) || other.numberData == numberData));
}


@override
int get hashCode => Object.hash(runtimeType,numberData);

@override
String toString() {
  return 'NumberState.initial(numberData: $numberData)';
}


}

/// @nodoc
abstract mixin class $NumberStateLoadingCopyWith<$Res> implements $NumberStateCopyWith<$Res> {
  factory $NumberStateLoadingCopyWith(NumberStateLoading value, $Res Function(NumberStateLoading) _then) = _$NumberStateLoadingCopyWithImpl;
@useResult
$Res call({
 NumberModel? numberData
});




}
/// @nodoc
class _$NumberStateLoadingCopyWithImpl<$Res>
    implements $NumberStateLoadingCopyWith<$Res> {
  _$NumberStateLoadingCopyWithImpl(this._self, this._then);

  final NumberStateLoading _self;
  final $Res Function(NumberStateLoading) _then;

/// Create a copy of NumberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? numberData = freezed,}) {
  return _then(NumberStateLoading(
numberData: freezed == numberData ? _self.numberData : numberData // ignore: cast_nullable_to_non_nullable
as NumberModel?,
  ));
}


}

/// @nodoc


class NumberStateLoaded implements NumberState {
  const NumberStateLoaded({this.number = null});
  

@JsonKey() final  int? number;

/// Create a copy of NumberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberStateLoadedCopyWith<NumberStateLoaded> get copyWith => _$NumberStateLoadedCopyWithImpl<NumberStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberStateLoaded&&(identical(other.number, number) || other.number == number));
}


@override
int get hashCode => Object.hash(runtimeType,number);

@override
String toString() {
  return 'NumberState.loaded(number: $number)';
}


}

/// @nodoc
abstract mixin class $NumberStateLoadedCopyWith<$Res> implements $NumberStateCopyWith<$Res> {
  factory $NumberStateLoadedCopyWith(NumberStateLoaded value, $Res Function(NumberStateLoaded) _then) = _$NumberStateLoadedCopyWithImpl;
@useResult
$Res call({
 int? number
});




}
/// @nodoc
class _$NumberStateLoadedCopyWithImpl<$Res>
    implements $NumberStateLoadedCopyWith<$Res> {
  _$NumberStateLoadedCopyWithImpl(this._self, this._then);

  final NumberStateLoaded _self;
  final $Res Function(NumberStateLoaded) _then;

/// Create a copy of NumberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? number = freezed,}) {
  return _then(NumberStateLoaded(
number: freezed == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class NumberStateError implements NumberState {
  const NumberStateError({required this.error});
  

 final  Object error;

/// Create a copy of NumberState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NumberStateErrorCopyWith<NumberStateError> get copyWith => _$NumberStateErrorCopyWithImpl<NumberStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NumberStateError&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error));

@override
String toString() {
  return 'NumberState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $NumberStateErrorCopyWith<$Res> implements $NumberStateCopyWith<$Res> {
  factory $NumberStateErrorCopyWith(NumberStateError value, $Res Function(NumberStateError) _then) = _$NumberStateErrorCopyWithImpl;
@useResult
$Res call({
 Object error
});




}
/// @nodoc
class _$NumberStateErrorCopyWithImpl<$Res>
    implements $NumberStateErrorCopyWith<$Res> {
  _$NumberStateErrorCopyWithImpl(this._self, this._then);

  final NumberStateError _self;
  final $Res Function(NumberStateError) _then;

/// Create a copy of NumberState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(NumberStateError(
error: null == error ? _self.error : error ,
  ));
}


}

// dart format on
