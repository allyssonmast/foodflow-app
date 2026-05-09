// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CheckoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent()';
}


}

/// @nodoc
class $CheckoutEventCopyWith<$Res>  {
$CheckoutEventCopyWith(CheckoutEvent _, $Res Function(CheckoutEvent) __);
}


/// Adds pattern-matching-related methods to [CheckoutEvent].
extension CheckoutEventPatterns on CheckoutEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ChangeMetodo value)?  changeMetodo,TResult Function( Finalizar value)?  finalizar,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ChangeMetodo() when changeMetodo != null:
return changeMetodo(_that);case Finalizar() when finalizar != null:
return finalizar(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ChangeMetodo value)  changeMetodo,required TResult Function( Finalizar value)  finalizar,}){
final _that = this;
switch (_that) {
case ChangeMetodo():
return changeMetodo(_that);case Finalizar():
return finalizar(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ChangeMetodo value)?  changeMetodo,TResult? Function( Finalizar value)?  finalizar,}){
final _that = this;
switch (_that) {
case ChangeMetodo() when changeMetodo != null:
return changeMetodo(_that);case Finalizar() when finalizar != null:
return finalizar(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MetodoPagamento metodo)?  changeMetodo,TResult Function()?  finalizar,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ChangeMetodo() when changeMetodo != null:
return changeMetodo(_that.metodo);case Finalizar() when finalizar != null:
return finalizar();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MetodoPagamento metodo)  changeMetodo,required TResult Function()  finalizar,}) {final _that = this;
switch (_that) {
case ChangeMetodo():
return changeMetodo(_that.metodo);case Finalizar():
return finalizar();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MetodoPagamento metodo)?  changeMetodo,TResult? Function()?  finalizar,}) {final _that = this;
switch (_that) {
case ChangeMetodo() when changeMetodo != null:
return changeMetodo(_that.metodo);case Finalizar() when finalizar != null:
return finalizar();case _:
  return null;

}
}

}

/// @nodoc


class ChangeMetodo implements CheckoutEvent {
  const ChangeMetodo(this.metodo);
  

 final  MetodoPagamento metodo;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangeMetodoCopyWith<ChangeMetodo> get copyWith => _$ChangeMetodoCopyWithImpl<ChangeMetodo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangeMetodo&&(identical(other.metodo, metodo) || other.metodo == metodo));
}


@override
int get hashCode => Object.hash(runtimeType,metodo);

@override
String toString() {
  return 'CheckoutEvent.changeMetodo(metodo: $metodo)';
}


}

/// @nodoc
abstract mixin class $ChangeMetodoCopyWith<$Res> implements $CheckoutEventCopyWith<$Res> {
  factory $ChangeMetodoCopyWith(ChangeMetodo value, $Res Function(ChangeMetodo) _then) = _$ChangeMetodoCopyWithImpl;
@useResult
$Res call({
 MetodoPagamento metodo
});




}
/// @nodoc
class _$ChangeMetodoCopyWithImpl<$Res>
    implements $ChangeMetodoCopyWith<$Res> {
  _$ChangeMetodoCopyWithImpl(this._self, this._then);

  final ChangeMetodo _self;
  final $Res Function(ChangeMetodo) _then;

/// Create a copy of CheckoutEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? metodo = null,}) {
  return _then(ChangeMetodo(
null == metodo ? _self.metodo : metodo // ignore: cast_nullable_to_non_nullable
as MetodoPagamento,
  ));
}


}

/// @nodoc


class Finalizar implements CheckoutEvent {
  const Finalizar();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Finalizar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CheckoutEvent.finalizar()';
}


}




// dart format on
