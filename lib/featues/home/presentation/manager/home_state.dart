import 'package:exam_6/data/models/accounts_model.dart';
import 'package:exam_6/data/models/categories_model.dart';
import 'package:exam_6/data/models/home_model.dart';
import 'package:exam_6/data/models/interviews_model.dart';
import 'package:exam_6/data/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStatus { idle, loading, error }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required List<CoursesModel> courses,
    required List<CategoriesModel> categories,
    required List<AccountsModel> accounts,
    required List<InterviewsModel> interviews,
    required UserModel? user,
    required HomeStatus? status,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      courses: [],
      user: null,
      interviews: [],
      categories: [],
      accounts: [],
      status: HomeStatus.loading,
    );
  }
}
