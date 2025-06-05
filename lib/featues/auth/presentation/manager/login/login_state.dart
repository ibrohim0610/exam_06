import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

enum LoginStatus { idle, success, error }
@freezed
abstract class LoginState with  _$LoginState {
  const factory LoginState({
    required int? phoneNumber,
    required bool showPassword,
    required  LoginStatus loginStatus,
  }) = _LoginState;
  factory LoginState.initial() {
    return LoginState(
      showPassword: true,
      phoneNumber: null,
      loginStatus: LoginStatus.idle,
    );
  }




}