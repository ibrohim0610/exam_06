import 'package:exam_6/core/routing/routes.dart';
import 'package:exam_6/featues/auth/presentation/manager/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/color.dart';
import '../../../common/ayol_uchun_text_button_container.dart';
import '../manager/login/login_state.dart';
import '../widgets/sign_up_title_desc.dart';
import '../widgets/sign_up_view_name_text_form_field.dart';
import '../widgets/sign_up_view_social_media.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/login.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<LoginBloc, LoginState>(
          builder:
              (context, state) => ListView(
                padding: EdgeInsets.only(left: 20.w, right: 20.w),
                children: [
                  Center(
                    child: SignUpTitleDesc(
                      title: 'Xush kelibsiz',
                      desc:
                          'O‘quv platformasiga kirish uchun quyida elektron \n      pochtangiz va parolingizni kiriting"',
                    ),
                  ),
                  SizedBox(height: 70),
                  Form(
                    key: context.read<LoginBloc>().formKey,
                    child: Column(
                      spacing: 10,
                      children: [
                        Text(
                          "Kirish",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        SignUpViewNameTextFormField(
                          hintText: "+998",
                          suffix: "phone.svg",
                          controller: context.read<LoginBloc>().phoneController,
                          validator: context.read<LoginBloc>().phoneValidator,
                        ),
                        SignUpViewNameTextFormField(
                          hintText: "Parol",
                          suffix: "clock.svg",
                          controller: context.read<LoginBloc>().passwordController,
                          validator: context.read<LoginBloc>().passwordValidator,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Parolni unitdingizmi",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(height: 140),
                  Divider(color: Color(0x0fffffff)),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                      "Quyidagilar orqali kirish",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      AyolUchunTextButtonContainer(
                        text: "Google",
                        icon: "google.svg",
                      ),
                      AyolUchunTextButtonContainer(
                        text: "Apple",
                        icon: "apple.svg",
                      ),
                    ],
                  ),
                  SizedBox(height: 70.h),
                  SignUpViewSocialMedia(
                    text: "Kirish",
                    textColor: Colors.white,
                    containerColor: AppColors.buttonColor,
                    callback: () =>context.read<LoginBloc>().add(LoginUser()),
                  ),
                  SignUpViewSocialMedia(
                    text: "Ro'yxatdan otish",
                    textColor: Colors.white,
                    containerColor: Color(0xff3F5170),
                    callback: () =>context.go(Routes.signUp),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
