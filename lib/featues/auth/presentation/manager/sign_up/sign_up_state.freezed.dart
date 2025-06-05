// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {

 String? get firstName; int? get phoneNumber; String? get lastName; String? get email; bool get showPassword; bool get cshowPassword; String? get code; SignUpStatus get status;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.showPassword, showPassword) || other.showPassword == showPassword)&&(identical(other.cshowPassword, cshowPassword) || other.cshowPassword == cshowPassword)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,phoneNumber,lastName,email,showPassword,cshowPassword,code,status);

@override
String toString() {
  return 'SignUpState(firstName: $firstName, phoneNumber: $phoneNumber, lastName: $lastName, email: $email, showPassword: $showPassword, cshowPassword: $cshowPassword, code: $code, status: $status)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 String? firstName, int? phoneNumber, String? lastName, String? email, bool showPassword, bool cshowPassword, String? code, SignUpStatus status
});




}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = freezed,Object? phoneNumber = freezed,Object? lastName = freezed,Object? email = freezed,Object? showPassword = null,Object? cshowPassword = null,Object? code = freezed,Object? status = null,}) {
  return _then(_self.copyWith(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as int?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,showPassword: null == showPassword ? _self.showPassword : showPassword // ignore: cast_nullable_to_non_nullable
as bool,cshowPassword: null == cshowPassword ? _self.cshowPassword : cshowPassword // ignore: cast_nullable_to_non_nullable
as bool,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignUpStatus,
  ));
}

}


/// @nodoc


class _SignUpState implements SignUpState {
  const _SignUpState({required this.firstName, required this.phoneNumber, required this.lastName, required this.email, required this.showPassword, required this.cshowPassword, required this.code, required this.status});
  

@override final  String? firstName;
@override final  int? phoneNumber;
@override final  String? lastName;
@override final  String? email;
@override final  bool showPassword;
@override final  bool cshowPassword;
@override final  String? code;
@override final  SignUpStatus status;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.email, email) || other.email == email)&&(identical(other.showPassword, showPassword) || other.showPassword == showPassword)&&(identical(other.cshowPassword, cshowPassword) || other.cshowPassword == cshowPassword)&&(identical(other.code, code) || other.code == code)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,phoneNumber,lastName,email,showPassword,cshowPassword,code,status);

@override
String toString() {
  return 'SignUpState(firstName: $firstName, phoneNumber: $phoneNumber, lastName: $lastName, email: $email, showPassword: $showPassword, cshowPassword: $cshowPassword, code: $code, status: $status)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 String? firstName, int? phoneNumber, String? lastName, String? email, bool showPassword, bool cshowPassword, String? code, SignUpStatus status
});




}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = freezed,Object? phoneNumber = freezed,Object? lastName = freezed,Object? email = freezed,Object? showPassword = null,Object? cshowPassword = null,Object? code = freezed,Object? status = null,}) {
  return _then(_SignUpState(
firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as int?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,showPassword: null == showPassword ? _self.showPassword : showPassword // ignore: cast_nullable_to_non_nullable
as bool,cshowPassword: null == cshowPassword ? _self.cshowPassword : cshowPassword // ignore: cast_nullable_to_non_nullable
as bool,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignUpStatus,
  ));
}


}

// dart format on
