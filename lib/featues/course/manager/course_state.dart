import 'package:exam_6/data/models/accounts_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:json_annotation/json_annotation.dart';

import '../../../data/models/home_model.dart';

part 'course_state.freezed.dart';

enum CourseStatus {  idle,error, loading }

@freezed
abstract class CourseState with _$CourseState {
  const factory CourseState({
    required List<CoursesModel>? course,
    required List<AccountsModel>? social,
    required CourseStatus status,
  }) = _CourseState;

  factory CourseState.initial() {
    return CourseState(course: null, status: CourseStatus.loading, social: []);
  }
}