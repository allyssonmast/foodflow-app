// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PedidoModel {

 int get id; int get clienteId; String get clienteNome; int get restauranteId; String get restauranteNome; String get status; double get valorTotal; String get criadoEm;
/// Create a copy of PedidoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoModelCopyWith<PedidoModel> get copyWith => _$PedidoModelCopyWithImpl<PedidoModel>(this as PedidoModel, _$identity);

  /// Serializes this PedidoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.clienteNome, clienteNome) || other.clienteNome == clienteNome)&&(identical(other.restauranteId, restauranteId) || other.restauranteId == restauranteId)&&(identical(other.restauranteNome, restauranteNome) || other.restauranteNome == restauranteNome)&&(identical(other.status, status) || other.status == status)&&(identical(other.valorTotal, valorTotal) || other.valorTotal == valorTotal)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clienteId,clienteNome,restauranteId,restauranteNome,status,valorTotal,criadoEm);

@override
String toString() {
  return 'PedidoModel(id: $id, clienteId: $clienteId, clienteNome: $clienteNome, restauranteId: $restauranteId, restauranteNome: $restauranteNome, status: $status, valorTotal: $valorTotal, criadoEm: $criadoEm)';
}


}

/// @nodoc
abstract mixin class $PedidoModelCopyWith<$Res>  {
  factory $PedidoModelCopyWith(PedidoModel value, $Res Function(PedidoModel) _then) = _$PedidoModelCopyWithImpl;
@useResult
$Res call({
 int id, int clienteId, String clienteNome, int restauranteId, String restauranteNome, String status, double valorTotal, String criadoEm
});




}
/// @nodoc
class _$PedidoModelCopyWithImpl<$Res>
    implements $PedidoModelCopyWith<$Res> {
  _$PedidoModelCopyWithImpl(this._self, this._then);

  final PedidoModel _self;
  final $Res Function(PedidoModel) _then;

/// Create a copy of PedidoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? clienteId = null,Object? clienteNome = null,Object? restauranteId = null,Object? restauranteNome = null,Object? status = null,Object? valorTotal = null,Object? criadoEm = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as int,clienteNome: null == clienteNome ? _self.clienteNome : clienteNome // ignore: cast_nullable_to_non_nullable
as String,restauranteId: null == restauranteId ? _self.restauranteId : restauranteId // ignore: cast_nullable_to_non_nullable
as int,restauranteNome: null == restauranteNome ? _self.restauranteNome : restauranteNome // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,valorTotal: null == valorTotal ? _self.valorTotal : valorTotal // ignore: cast_nullable_to_non_nullable
as double,criadoEm: null == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoModel].
extension PedidoModelPatterns on PedidoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoModel value)  $default,){
final _that = this;
switch (_that) {
case _PedidoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoModel value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int clienteId,  String clienteNome,  int restauranteId,  String restauranteNome,  String status,  double valorTotal,  String criadoEm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoModel() when $default != null:
return $default(_that.id,_that.clienteId,_that.clienteNome,_that.restauranteId,_that.restauranteNome,_that.status,_that.valorTotal,_that.criadoEm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int clienteId,  String clienteNome,  int restauranteId,  String restauranteNome,  String status,  double valorTotal,  String criadoEm)  $default,) {final _that = this;
switch (_that) {
case _PedidoModel():
return $default(_that.id,_that.clienteId,_that.clienteNome,_that.restauranteId,_that.restauranteNome,_that.status,_that.valorTotal,_that.criadoEm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int clienteId,  String clienteNome,  int restauranteId,  String restauranteNome,  String status,  double valorTotal,  String criadoEm)?  $default,) {final _that = this;
switch (_that) {
case _PedidoModel() when $default != null:
return $default(_that.id,_that.clienteId,_that.clienteNome,_that.restauranteId,_that.restauranteNome,_that.status,_that.valorTotal,_that.criadoEm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PedidoModel implements PedidoModel {
  const _PedidoModel({required this.id, required this.clienteId, required this.clienteNome, required this.restauranteId, required this.restauranteNome, required this.status, required this.valorTotal, required this.criadoEm});
  factory _PedidoModel.fromJson(Map<String, dynamic> json) => _$PedidoModelFromJson(json);

@override final  int id;
@override final  int clienteId;
@override final  String clienteNome;
@override final  int restauranteId;
@override final  String restauranteNome;
@override final  String status;
@override final  double valorTotal;
@override final  String criadoEm;

/// Create a copy of PedidoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoModelCopyWith<_PedidoModel> get copyWith => __$PedidoModelCopyWithImpl<_PedidoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PedidoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.clienteNome, clienteNome) || other.clienteNome == clienteNome)&&(identical(other.restauranteId, restauranteId) || other.restauranteId == restauranteId)&&(identical(other.restauranteNome, restauranteNome) || other.restauranteNome == restauranteNome)&&(identical(other.status, status) || other.status == status)&&(identical(other.valorTotal, valorTotal) || other.valorTotal == valorTotal)&&(identical(other.criadoEm, criadoEm) || other.criadoEm == criadoEm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,clienteId,clienteNome,restauranteId,restauranteNome,status,valorTotal,criadoEm);

@override
String toString() {
  return 'PedidoModel(id: $id, clienteId: $clienteId, clienteNome: $clienteNome, restauranteId: $restauranteId, restauranteNome: $restauranteNome, status: $status, valorTotal: $valorTotal, criadoEm: $criadoEm)';
}


}

/// @nodoc
abstract mixin class _$PedidoModelCopyWith<$Res> implements $PedidoModelCopyWith<$Res> {
  factory _$PedidoModelCopyWith(_PedidoModel value, $Res Function(_PedidoModel) _then) = __$PedidoModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int clienteId, String clienteNome, int restauranteId, String restauranteNome, String status, double valorTotal, String criadoEm
});




}
/// @nodoc
class __$PedidoModelCopyWithImpl<$Res>
    implements _$PedidoModelCopyWith<$Res> {
  __$PedidoModelCopyWithImpl(this._self, this._then);

  final _PedidoModel _self;
  final $Res Function(_PedidoModel) _then;

/// Create a copy of PedidoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? clienteId = null,Object? clienteNome = null,Object? restauranteId = null,Object? restauranteNome = null,Object? status = null,Object? valorTotal = null,Object? criadoEm = null,}) {
  return _then(_PedidoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as int,clienteNome: null == clienteNome ? _self.clienteNome : clienteNome // ignore: cast_nullable_to_non_nullable
as String,restauranteId: null == restauranteId ? _self.restauranteId : restauranteId // ignore: cast_nullable_to_non_nullable
as int,restauranteNome: null == restauranteNome ? _self.restauranteNome : restauranteNome // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,valorTotal: null == valorTotal ? _self.valorTotal : valorTotal // ignore: cast_nullable_to_non_nullable
as double,criadoEm: null == criadoEm ? _self.criadoEm : criadoEm // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
