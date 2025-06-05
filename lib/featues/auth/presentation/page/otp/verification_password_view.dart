import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../../core/utils/color.dart';
import '../../widgets/sign_up_title_desc.dart';
import '../../widgets/sign_up_view_social_media.dart';

class VerificationPasswordView extends StatelessWidget {
  const VerificationPasswordView({super.key});

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
        body: ListView(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          children: [
            Center(child: SignUpTitleDesc(title: 'Xush kelibsiz',desc: "O‘quv platformasiga kirish uchun quyida telefon\nraqamingizga yuborilgan tasdiqlash kodini kiriting",)),
            SizedBox(height: 80),

            Center(
              child: Text(
                "Tasdiqlash kodi",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 10),
            Pinput(length: 6,
            defaultPinTheme: defaultPinTheme,),
            SizedBox(height: 450.h),
            SignUpViewSocialMedia(
              text: "Kirish",
              textColor: Colors.white,
              containerColor: AppColors.buttonColor,
              callback: () {},
            ),
          ],
        ),

      ),
    );
  }
}
final defaultPinTheme = PinTheme(
  width: 50.w,
  height: 50.h,
  textStyle: TextStyle(
    fontSize: 32,
    color: AppColors.primary,
    fontWeight: FontWeight.w600,
  ),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(4),
  ),
);

