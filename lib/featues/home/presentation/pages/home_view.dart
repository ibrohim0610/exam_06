import 'package:exam_6/featues/home/presentation/manager/home_state.dart';
import 'package:exam_6/featues/home/presentation/pages/advertisament.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_bottom_navigation_bar.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_categories_container.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_couse_container.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_social_network.dart';
import 'package:exam_6/featues/home/presentation/pages/interviews.dart';
import 'package:exam_6/featues/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../manager/home_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(title: 'Salom, Mohinur 🌸',),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.status == HomeStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }
          if (state.status == HomeStatus.error) {
            return Center(child: Text("Erorr"));
          }
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Column(
                    children: [
                      HomeViewCoursesContainer(callback: () {}),
                      SizedBox(),
                    ],
                  ),
                ),
                HomeViewCategoriesContainer(categories: state.categories),
                SizedBox(height: 25.h),
                HomeViewSocialNetwork(social: state.accounts),
                SizedBox(height: 30.h),
                Interviews(interviews: state.interviews),
                SizedBox(height: 30.h),
                Advertisement(),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: HomeViewBottomNavigationBar(),
    );
  }
}
