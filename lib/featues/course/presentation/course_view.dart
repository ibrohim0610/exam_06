import 'package:exam_6/featues/course/manager/course_bloc.dart';
import 'package:exam_6/featues/course/manager/course_state.dart';
import 'package:exam_6/featues/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/detail.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(title: 'Kurslar 📚'),
        body: BlocBuilder<CourseBloc, CourseState>(builder: ( context, state) {
          return

            ListView(
                children: [Detail(course: state.course!, social: state.social!,
                )
                ]
            );
        }
    )
    );
  }
  }
