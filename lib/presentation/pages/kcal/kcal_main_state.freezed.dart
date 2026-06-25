// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kcal_main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KcalMainState {

 int get totalKcal;
/// Create a copy of KcalMainState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KcalMainStateCopyWith<KcalMainState> get copyWith => _$KcalMainStateCopyWithImpl<KcalMainState>(this as KcalMainState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KcalMainState&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal));
}


@override
int get hashCode => Object.hash(runtimeType,totalKcal);

@override
String toString() {
  return 'KcalMainState(totalKcal: $totalKcal)';
}


}

/// @nodoc
abstract mixin class $KcalMainStateCopyWith<$Res>  {
  factory $KcalMainStateCopyWith(KcalMainState value, $Res Function(KcalMainState) _then) = _$KcalMainStateCopyWithImpl;
@useResult
$Res call({
 int totalKcal
});




}
/// @nodoc
class _$KcalMainStateCopyWithImpl<$Res>
    implements $KcalMainStateCopyWith<$Res> {
  _$KcalMainStateCopyWithImpl(this._self, this._then);

  final KcalMainState _self;
  final $Res Function(KcalMainState) _then;

/// Create a copy of KcalMainState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalKcal = null,}) {
  return _then(_self.copyWith(
totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [KcalMainState].
extension KcalMainStatePatterns on KcalMainState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( Init value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case Init() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( Init value)  $default,){
final _that = this;
switch (_that) {
case Init():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( Init value)?  $default,){
final _that = this;
switch (_that) {
case Init() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalKcal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case Init() when $default != null:
return $default(_that.totalKcal);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalKcal)  $default,) {final _that = this;
switch (_that) {
case Init():
return $default(_that.totalKcal);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalKcal)?  $default,) {final _that = this;
switch (_that) {
case Init() when $default != null:
return $default(_that.totalKcal);case _:
  return null;

}
}

}

/// @nodoc


class Init implements KcalMainState {
   Init({required this.totalKcal});
  

@override final  int totalKcal;

/// Create a copy of KcalMainState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitCopyWith<Init> get copyWith => _$InitCopyWithImpl<Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Init&&(identical(other.totalKcal, totalKcal) || other.totalKcal == totalKcal));
}


@override
int get hashCode => Object.hash(runtimeType,totalKcal);

@override
String toString() {
  return 'KcalMainState(totalKcal: $totalKcal)';
}


}

/// @nodoc
abstract mixin class $InitCopyWith<$Res> implements $KcalMainStateCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) _then) = _$InitCopyWithImpl;
@override @useResult
$Res call({
 int totalKcal
});




}
/// @nodoc
class _$InitCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(this._self, this._then);

  final Init _self;
  final $Res Function(Init) _then;

/// Create a copy of KcalMainState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalKcal = null,}) {
  return _then(Init(
totalKcal: null == totalKcal ? _self.totalKcal : totalKcal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
