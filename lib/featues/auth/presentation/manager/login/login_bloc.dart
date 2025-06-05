import 'package:exam_6/data/repository/auth_repository.dart';
import 'package:exam_6/featues/auth/presentation/manager/auth_validators.dart';
import 'package:exam_6/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import 'login_state.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState>{
  final AuthRepository _repo;
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  LoginBloc({required AuthRepository repo})
  : _repo = repo,
  super(LoginState.initial()){
    on<LoginUser>(_login);
    on<ShowPassword>(_showPassword);
  }

  Future _login(LoginUser event, Emitter emit)async{
    if (formKey.currentState!.validate()) {
      bool result = await _repo.login(login: phoneController.text, password: passwordController.text);
      if (result) {
        navigatorKey.currentContext!.go(Routes.home);
        emit(state.copyWith(loginStatus: LoginStatus.success));
      }else{
        emit(state.copyWith(
          loginStatus: LoginStatus.error,
        ));
      }
    }
  }

  Future _showPassword(ShowPassword event, Emitter emit)async{
    emit(state.copyWith(showPassword: state.showPassword));
  }
  String? phoneValidator(String? value){
    final error = AuthValidators.validatePhoneNumber(value);
    return error;
  }
  String? passwordValidator(String? value){
    final error = AuthValidators.validatePassword(value);
    return error;
  }


}