import 'package:exam_6/featues/home/presentation/manager/home_state.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_categories_container.dart';
import 'package:exam_6/featues/home/presentation/pages/home_view_couse_container.dart';
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
      appBar: HomeAppBar(),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder:(context,state){
          if (state.status == HomeStatus.loading) {
            return Center(child: CircularProgressIndicator());
          }if (state.status == HomeStatus.error) {
            return Center(child: Text("Erorr"));
          }
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [HomeViewCoursesContainer(callback: () {})],
                  ),
                ),
                HomeViewCategoriesContainer(categories: state.categories,),
              ],
            ),
          );

        },
      ),
    );
  }
}
