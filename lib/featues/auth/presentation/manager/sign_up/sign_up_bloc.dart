import 'package:exam_6/core/routing/routes.dart';
import 'package:exam_6/featues/auth/presentation/manager/auth_validators.dart';
import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:exam_6/main.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../data/repository/auth_repository.dart';

part 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvents, SignUpState> {
  final AuthRepository _repo;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyPhone = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyReset= GlobalKey<FormState>();

  SignUpBloc({required AuthRepository repo})
    : _repo = repo,
      super(SignUpState.initial()) {
    on<CreateAccount>(_createAccount);
    on<ShowPassword>(_showPassword);
    on<CShowPassword>(_cShowPassword);
    on<FirstNameValidationInfo>(_signUpPhoneNumber);
  }
  Future _signUpPhoneNumber(FirstNameValidationInfo event, Emitter emit)async{
    if (formKeyPhone.currentState!.validate()) {
      navigatorKey.currentContext!.go(Routes.verification);
    }  
  }

  Future _createAccount(CreateAccount event, Emitter emit) async {
    if (formKey.currentState!.validate()) {
      bool result = await _repo.signUp(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        phoneNumber: phoneNumberController.text,
        password: passwordController.text,
      );
      if(result){
        navigatorKey.currentContext!.go(Routes.phoneNumber);
      }else{
        emit(state.copyWith(
          status: SignUpStatus.error
        ));
      }
    }else{
      emit(state.copyWith());
    }
  }
  String? firstNameValidator(String? value) {
    final error = AuthValidators.validateFirstName(value);
    return error;
  }
  String? lastNameValidator(String? value){
    final error = AuthValidators.validateLastName(value);
    return error;
  }
  String?emailValidator(String? value){
    final error = AuthValidators.validateEmail(value);
    return error;
  }
  String? phoneValidator(String? value){
    final error = AuthValidators.validatePhoneNumber(value);
    return error;
  }
  String? passwordValidator(String? value){
    final error = AuthValidators.validatePassword(value);
    return error;
  }
  String? cPasswordValidator(String? value){
    final error = AuthValidators.validatePassword(value);
    return error;
  }
  Future _showPassword(ShowPassword event, Emitter emit) async {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future _cShowPassword(CShowPassword event, Emitter emit) async {
    emit(state.copyWith(cshowPassword: !state.cshowPassword));
  }
}
