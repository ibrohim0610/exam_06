import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_bloc.dart';
import 'package:exam_6/featues/auth/presentation/manager/sign_up/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/color.dart';
import '../../widgets/sign_up_title_desc.dart';
import '../../widgets/sign_up_view_name_text_form_field.dart';
import '../../widgets/sign_up_view_social_media.dart';

class PhoneNumberView extends StatelessWidget {
  const PhoneNumberView({super.key});

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
                  desc:"O‘quv platformasiga kirish uchun telefon raqamingizni kiriting"),
              ),
              SizedBox(height: 70),
              Form(
                key: context.read<SignUpBloc>().formKeyPhone,
                child: Column(
                  spacing: 10,
                  children: [
                    Text(
                      "Telefon Raqami",
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
                      controller: context.read<SignUpBloc>().phoneNumberController,
                      validator: context.read<SignUpBloc>().phoneValidator,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 450.h),
              SignUpViewSocialMedia(
                text: "Kirish",
                textColor: Colors.white,
                containerColor: AppColors.buttonColor,
                callback: ()=>context.read<SignUpBloc>().add(FirstNameValidationInfo())
              ),
              SignUpViewSocialMedia(
                text: "Ro'yxatdan otish",
                textColor: Colors.white,
                containerColor: Color(0xff3F5170),
                callback: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
