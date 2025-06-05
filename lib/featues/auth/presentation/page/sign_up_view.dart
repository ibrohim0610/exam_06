import 'package:exam_6/core/utils/color.dart';
import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_bloc.dart';
import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:exam_6/featues/auth/presentation/widgets/sign_up_title_desc.dart';
import 'package:exam_6/featues/auth/presentation/widgets/sign_up_view_name_text_form_field.dart';
import 'package:exam_6/featues/auth/presentation/widgets/sign_up_view_social_media.dart';
import 'package:exam_6/featues/common/ayol_uchun_text_button_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                      title: "Xush kelibsiz",
                      desc:
                          "O‘quv platformasiga kirish uchun quyida berilgan \n     maydonlarni to‘ldirib ro‘yxatdan o‘ting",
                    ),
                  ),
                  SizedBox(height: 70),
                  Form(
                    key: context.read<SignUpBloc>().formKey,
                    child: Column(
                      spacing: 10,
                      children: [
                        Text(
                          "Ro'yxatdan o'tish",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5),
                        SignUpViewNameTextFormField(
                          hintText: "Ism",
                          controller: context.read<SignUpBloc>().firstNameController,
                          validator: context.read<SignUpBloc>().firstNameValidator,
                          suffix: "human.svg",
                        ),
                        SignUpViewNameTextFormField(
                          hintText: "Familya",
                          controller:context.read<SignUpBloc>().lastNameController,
                          validator: context.read<SignUpBloc>().lastNameValidator,
                          suffix: 'human.svg',
                        ),
                        SignUpViewNameTextFormField(
                          hintText: "Electron Pochta",
                          controller: context.read<SignUpBloc>().emailController,
                          validator: context.read<SignUpBloc>().emailValidator,
                          suffix: "email.svg",
                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  ),
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
                  Center(
                    child: Column(
                      spacing: 5,
                      children: [
                        Text(
                          "Tizimga kirish orqali siz foydalanish shartlari va \n maxfiylik siyosatiga roziligingizni tasdiqlaysiz ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        SignUpViewSocialMedia(
                          text: "Davom etish",
                          textColor: Colors.white,
                          containerColor: AppColors.buttonColor,
                          callback: () {
                            context.read<SignUpBloc>().add(CreateAccount());
                          },

                        ),
                      ],
                    ),
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
