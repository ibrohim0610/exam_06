import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_state.freezed.dart';



enum SignUpStatus { idle, error, success}

@freezed
abstract class SignUpState with _$SignUpState{

  const factory SignUpState({
    required String? firstName,
    required int? phoneNumber,
    required String? lastName,
    required String? email,
    required bool showPassword,
    required bool cshowPassword,
    required String? code,
    required SignUpStatus status,
  }) = _SignUpState;




  factory SignUpState.initial() {
    return SignUpState(
        firstName: null,
        lastName: null,
        email: null,
        showPassword: true,
        cshowPassword: true,
        phoneNumber: null,
        code: null,
        status: SignUpStatus.idle,
    );

  }

}