import 'package:bloc/bloc.dart';
import 'package:exam_6/data/repository/home_repository.dart';
import 'course_event.dart';
import 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final HomeRepository _repo;

  CourseBloc({
    required HomeRepository repo
  }) : _repo = repo,

        super(CourseState.initial()) {
    on<CourseLoading>(_onLoad);
    add(CourseLoading());
  }

  Future _onLoad(CourseLoading event, Emitter<CourseState> emit) async {
    final detail = await _repo.fetchCourses();
    final social = await _repo.fetchAccounts();
    emit(state.copyWith(social: social,course: detail, status: CourseStatus.idle));
  }
}