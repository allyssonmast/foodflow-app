// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurante_detalhe_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RestauranteDetalheEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestauranteDetalheEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RestauranteDetalheEvent()';
}


}

/// @nodoc
class $RestauranteDetalheEventCopyWith<$Res>  {
$RestauranteDetalheEventCopyWith(RestauranteDetalheEvent _, $Res Function(RestauranteDetalheEvent) __);
}


/// Adds pattern-matching-related methods to [RestauranteDetalheEvent].
extension RestauranteDetalheEventPatterns on RestauranteDetalheEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Load value)?  load,TResult Function( _AddItem value)?  addItem,TResult Function( _RemoveItem value)?  removeItem,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _AddItem() when addItem != null:
return addItem(_that);case _RemoveItem() when removeItem != null:
return removeItem(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Load value)  load,required TResult Function( _AddItem value)  addItem,required TResult Function( _RemoveItem value)  removeItem,}){
final _that = this;
switch (_that) {
case _Load():
return load(_that);case _AddItem():
return addItem(_that);case _RemoveItem():
return removeItem(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Load value)?  load,TResult? Function( _AddItem value)?  addItem,TResult? Function( _RemoveItem value)?  removeItem,}){
final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that);case _AddItem() when addItem != null:
return addItem(_that);case _RemoveItem() when removeItem != null:
return removeItem(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int restauranteId)?  load,TResult Function( ProdutoModel produto)?  addItem,TResult Function( ProdutoModel produto)?  removeItem,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that.restauranteId);case _AddItem() when addItem != null:
return addItem(_that.produto);case _RemoveItem() when removeItem != null:
return removeItem(_that.produto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int restauranteId)  load,required TResult Function( ProdutoModel produto)  addItem,required TResult Function( ProdutoModel produto)  removeItem,}) {final _that = this;
switch (_that) {
case _Load():
return load(_that.restauranteId);case _AddItem():
return addItem(_that.produto);case _RemoveItem():
return removeItem(_that.produto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int restauranteId)?  load,TResult? Function( ProdutoModel produto)?  addItem,TResult? Function( ProdutoModel produto)?  removeItem,}) {final _that = this;
switch (_that) {
case _Load() when load != null:
return load(_that.restauranteId);case _AddItem() when addItem != null:
return addItem(_that.produto);case _RemoveItem() when removeItem != null:
return removeItem(_that.produto);case _:
  return null;

}
}

}

/// @nodoc


class _Load implements RestauranteDetalheEvent {
  const _Load(this.restauranteId);
  

 final  int restauranteId;

/// Create a copy of RestauranteDetalheEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCopyWith<_Load> get copyWith => __$LoadCopyWithImpl<_Load>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Load&&(identical(other.restauranteId, restauranteId) || other.restauranteId == restauranteId));
}


@override
int get hashCode => Object.hash(runtimeType,restauranteId);

@override
String toString() {
  return 'RestauranteDetalheEvent.load(restauranteId: $restauranteId)';
}


}

/// @nodoc
abstract mixin class _$LoadCopyWith<$Res> implements $RestauranteDetalheEventCopyWith<$Res> {
  factory _$LoadCopyWith(_Load value, $Res Function(_Load) _then) = __$LoadCopyWithImpl;
@useResult
$Res call({
 int restauranteId
});




}
/// @nodoc
class __$LoadCopyWithImpl<$Res>
    implements _$LoadCopyWith<$Res> {
  __$LoadCopyWithImpl(this._self, this._then);

  final _Load _self;
  final $Res Function(_Load) _then;

/// Create a copy of RestauranteDetalheEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? restauranteId = null,}) {
  return _then(_Load(
null == restauranteId ? _self.restauranteId : restauranteId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _AddItem implements RestauranteDetalheEvent {
  const _AddItem(this.produto);
  

 final  ProdutoModel produto;

/// Create a copy of RestauranteDetalheEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddItemCopyWith<_AddItem> get copyWith => __$AddItemCopyWithImpl<_AddItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddItem&&(identical(other.produto, produto) || other.produto == produto));
}


@override
int get hashCode => Object.hash(runtimeType,produto);

@override
String toString() {
  return 'RestauranteDetalheEvent.addItem(produto: $produto)';
}


}

/// @nodoc
abstract mixin class _$AddItemCopyWith<$Res> implements $RestauranteDetalheEventCopyWith<$Res> {
  factory _$AddItemCopyWith(_AddItem value, $Res Function(_AddItem) _then) = __$AddItemCopyWithImpl;
@useResult
$Res call({
 ProdutoModel produto
});




}
/// @nodoc
class __$AddItemCopyWithImpl<$Res>
    implements _$AddItemCopyWith<$Res> {
  __$AddItemCopyWithImpl(this._self, this._then);

  final _AddItem _self;
  final $Res Function(_AddItem) _then;

/// Create a copy of RestauranteDetalheEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? produto = null,}) {
  return _then(_AddItem(
null == produto ? _self.produto : produto // ignore: cast_nullable_to_non_nullable
as ProdutoModel,
  ));
}


}

/// @nodoc


class _RemoveItem implements RestauranteDetalheEvent {
  const _RemoveItem(this.produto);
  

 final  ProdutoModel produto;

/// Create a copy of RestauranteDetalheEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveItemCopyWith<_RemoveItem> get copyWith => __$RemoveItemCopyWithImpl<_RemoveItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveItem&&(identical(other.produto, produto) || other.produto == produto));
}


@override
int get hashCode => Object.hash(runtimeType,produto);

@override
String toString() {
  return 'RestauranteDetalheEvent.removeItem(produto: $produto)';
}


}

/// @nodoc
abstract mixin class _$RemoveItemCopyWith<$Res> implements $RestauranteDetalheEventCopyWith<$Res> {
  factory _$RemoveItemCopyWith(_RemoveItem value, $Res Function(_RemoveItem) _then) = __$RemoveItemCopyWithImpl;
@useResult
$Res call({
 ProdutoModel produto
});




}
/// @nodoc
class __$RemoveItemCopyWithImpl<$Res>
    implements _$RemoveItemCopyWith<$Res> {
  __$RemoveItemCopyWithImpl(this._self, this._then);

  final _RemoveItem _self;
  final $Res Function(_RemoveItem) _then;

/// Create a copy of RestauranteDetalheEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? produto = null,}) {
  return _then(_RemoveItem(
null == produto ? _self.produto : produto // ignore: cast_nullable_to_non_nullable
as ProdutoModel,
  ));
}


}

// dart format on
