part of"sign_up_bloc.dart";
sealed class SignUpEvents{}
class ShowPassword extends SignUpEvents {}
class CShowPassword extends SignUpEvents {}
class CreateAccount extends SignUpEvents{}
class VerificationCode extends SignUpEvents{}

final class FirstNameValidationInfo extends SignUpEvents{}
final class LastNameValidationInfo extends SignUpEvents{}
final class EmailNameValidation extends SignUpEvents{}
final class PhoneNumberValidation extends SignUpEvents{}
