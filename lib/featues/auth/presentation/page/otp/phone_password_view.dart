import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_bloc.dart';
import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../widgets/sign_up_title_desc.dart';
import '../../widgets/sign_up_view_name_text_form_field.dart';
import '../../widgets/sign_up_view_social_media.dart';

class PhonePasswordView extends StatelessWidget {
  const PhonePasswordView({super.key});

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
        body: BlocBuilder<SignUpBloc, SignUpState>(
          builder:
              (context, state) => ListView(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            children: [
              Center(
                child: SignUpTitleDesc(
                  title: 'Xush kelibsiz',
                  desc:
                  "O‘quv platformasiga kirish uchun quyida berilgan \n   maydonlarni to‘ldirib ro‘yxatdan o‘ting",
                ),
              ),
              SizedBox(height: 70),
              Form(
                key: context.read<SignUpBloc>().formKeyReset,
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
                      controller: context.read<SignUpBloc>().passwordController,
                      validator: context.read<SignUpBloc>().passwordValidator,
                    ),
                    SignUpViewNameTextFormField(
                      hintText: "Parol",
                      suffix: "clock.svg",
                      controller: context.read<SignUpBloc>().cPasswordController,
                      validator: context.read<SignUpBloc>().cPasswordValidator,
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
              SizedBox(height: 70.h),
              SignUpViewSocialMedia(
                text: "Kirish",
                textColor: Colors.white,
                containerColor: AppColors.buttonColor,
                callback: () => context.read<SignUpBloc>().add(ShowPassword())
              ),
            ],
          ),
        ),
      ),
    );
  }
}
