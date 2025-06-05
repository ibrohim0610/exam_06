import 'package:exam_6/core/routing/routes.dart';
import 'package:exam_6/featues/auth/presentation/manager/login/login_bloc.dart';
import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_bloc.dart';
import 'package:exam_6/featues/auth/presentation/page/login_view.dart';
import 'package:exam_6/featues/auth/presentation/page/otp/phone_number_view.dart';
import 'package:exam_6/featues/auth/presentation/page/otp/phone_password_view.dart';
import 'package:exam_6/featues/auth/presentation/page/otp/verification_password_view.dart';
import 'package:exam_6/featues/auth/presentation/page/sign_up_view.dart';
import 'package:exam_6/featues/home/presentation/manager/home_bloc.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view.dart';
import 'package:exam_6/featues/onboarding/onboarding_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';

final GoRouter router = GoRouter(
  initialLocation: Routes.home
  ,
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      path: Routes.login,
      builder:
          (context, state) => BlocProvider(
            create: (context) => LoginBloc(repo: context.read()),
            child: LoginView(),
          ),
    ),
    GoRoute(
      path: Routes.onboarding,
      builder: (context, state) => OnboardingView(),
    ),

    GoRoute(path: Routes.home, builder: (context, state) => BlocProvider(create: ( context) =>HomeBloc(repo: context.read(), authRepo: context.read()),
    child: HomeView())),
    ShellRoute(
      builder:
          (context, state, child) => BlocProvider(
            create: (context) => SignUpBloc(repo: context.read()),
            child: child,
          ),
      routes: [
        GoRoute(path: Routes.signUp,
        builder: (context, state)=>SignUpView()),
        GoRoute(
          path: Routes.phoneNumber,
          builder: (context, state) => PhoneNumberView(),
        ),
        GoRoute(
          path: Routes.verification,
          builder: (context, state) => VerificationPasswordView(),
        ),
        GoRoute(path: Routes.password,
        builder: (context,state)=>PhonePasswordView())
      ],
    ),
  ],
);
