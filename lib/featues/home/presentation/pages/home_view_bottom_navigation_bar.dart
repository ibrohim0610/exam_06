import 'package:exam_6/featues/home/presentation/pages/HomeViewBottomNavigationBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';

class HomeViewBottomNavigationBar extends StatelessWidget {
  const HomeViewBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical:12.h ),
      width: double.infinity,
      height: 90.h,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Homeviewbottomnavigationbarwidget(svg: "assets/home.svg", title: "Asosiy", callback: (){context.go(Routes.home);}),
            Homeviewbottomnavigationbarwidget(svg: "assets/course.svg", title: "Kurslar", callback: (){
              context.go(Routes.course);
            }),
            Homeviewbottomnavigationbarwidget(svg: "assets/blog.svg", title: "Blog", callback: (){}),
            Homeviewbottomnavigationbarwidget(svg: "assets/profile.svg", title: "Kabinet", callback: (){}),
          ]),
    );
  }
}