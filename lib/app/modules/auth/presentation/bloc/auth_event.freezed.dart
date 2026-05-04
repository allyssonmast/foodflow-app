// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Login value)?  login,TResult Function( _Logout value)?  logout,TResult Function( _CheckAuth value)?  checkAuth,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Login() when login != null:
return login(_that);case _Logout() when logout != null:
return logout(_that);case _CheckAuth() when checkAuth != null:
return checkAuth(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Login value)  login,required TResult Function( _Logout value)  logout,required TResult Function( _CheckAuth value)  checkAuth,}){
final _that = this;
switch (_that) {
case _Login():
return login(_that);case _Logout():
return logout(_that);case _CheckAuth():
return checkAuth(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Login value)?  login,TResult? Function( _Logout value)?  logout,TResult? Function( _CheckAuth value)?  checkAuth,}){
final _that = this;
switch (_that) {
case _Login() when login != null:
return login(_that);case _Logout() when logout != null:
return logout(_that);case _CheckAuth() when checkAuth != null:
return checkAuth(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userName,  String senha)?  login,TResult Function()?  logout,TResult Function()?  checkAuth,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Login() when login != null:
return login(_that.userName,_that.senha);case _Logout() when logout != null:
return logout();case _CheckAuth() when checkAuth != null:
return checkAuth();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userName,  String senha)  login,required TResult Function()  logout,required TResult Function()  checkAuth,}) {final _that = this;
switch (_that) {
case _Login():
return login(_that.userName,_that.senha);case _Logout():
return logout();case _CheckAuth():
return checkAuth();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userName,  String senha)?  login,TResult? Function()?  logout,TResult? Function()?  checkAuth,}) {final _that = this;
switch (_that) {
case _Login() when login != null:
return login(_that.userName,_that.senha);case _Logout() when logout != null:
return logout();case _CheckAuth() when checkAuth != null:
return checkAuth();case _:
  return null;

}
}

}

/// @nodoc


class _Login implements AuthEvent {
  const _Login(this.userName, this.senha);
  

 final  String userName;
 final  String senha;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginCopyWith<_Login> get copyWith => __$LoginCopyWithImpl<_Login>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Login&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.senha, senha) || other.senha == senha));
}


@override
int get hashCode => Object.hash(runtimeType,userName,senha);

@override
String toString() {
  return 'AuthEvent.login(userName: $userName, senha: $senha)';
}


}

/// @nodoc
abstract mixin class _$LoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) _then) = __$LoginCopyWithImpl;
@useResult
$Res call({
 String userName, String senha
});




}
/// @nodoc
class __$LoginCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(this._self, this._then);

  final _Login _self;
  final $Res Function(_Login) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userName = null,Object? senha = null,}) {
  return _then(_Login(
null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,null == senha ? _self.senha : senha // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Logout implements AuthEvent {
  const _Logout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Logout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc


class _CheckAuth implements AuthEvent {
  const _CheckAuth();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckAuth);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkAuth()';
}


}




// dart format on
