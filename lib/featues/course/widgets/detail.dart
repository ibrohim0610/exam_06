
import 'package:exam_6/data/models/accounts_model.dart';
import 'package:exam_6/featues/course/widgets/rating_and_status.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_social_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/color.dart';
import '../../../data/models/home_model.dart';
import '../../home/presentation/pages/advertisament.dart';

import 'bio.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.course, required this.social});

  final List<CoursesModel> course;
  final List<AccountsModel> social;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Kurslar ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text(
                " (${course.first.category})",
                style: TextStyle(
                  color: AppColors.textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),

          /// Bu joyda `shrinkWrap` va `physics` kerak
          GridView.builder(
            itemCount: course.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(), // scrollni tashqariga topshiradi
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 12.h,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 294.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Stack(
                        children: [
                          Image.network(
                            course[index].image,
                            width: double.infinity,
                            height: 164.h,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            right: 8,
                            child: RatingAndStatus(
                              rating: course[index].rating.toString(),
                              category: course[index].category,
                              status: course[index].status.toString(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Bio(
                      title: course[index].title,
                      user: course[index].user,
                      price: course[index].price.toString(),
                    ),
                  ],
                ),
              );
            },
          ),

          SizedBox(height: 12.h),
          HomeViewSocialNetwork(social: social),
          SizedBox(height: 40.h),
          Advertisement(),
        ],
      ),
    );
  }
}