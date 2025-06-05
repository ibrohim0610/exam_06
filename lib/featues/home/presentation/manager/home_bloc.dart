
import 'package:bloc/bloc.dart';
import 'package:exam_6/data/repository/auth_repository.dart';
import 'package:exam_6/data/repository/home_repository.dart';
import 'package:exam_6/featues/home/presentation/manager/home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _repo;
  final AuthRepository _authRepo;

  HomeBloc({

    required HomeRepository repo,
    required AuthRepository authRepo,
  }) : _repo=repo,_authRepo=authRepo,

        super(HomeState.initial()) {
    on<HomeLoading>(_onLoad);
    add(HomeLoading());
  }

  Future<void> _onLoad(HomeLoading event, Emitter<HomeState> emit) async {
    final category = await _repo.fetchCategories();
    emit(state.copyWith(status: HomeStatus.idle, categories: category));
    final courses = await _repo.fetchCourses();
    emit(state.copyWith(status: HomeStatus.idle, courses: courses));
    final interview = await _repo.fetchInterviews();
    emit(state.copyWith(status: HomeStatus.idle, interviews: interview));
    final social = await _repo.fetchAccounts();
    emit(state.copyWith(status: HomeStatus.idle, accounts: social));
    final user = await _authRepo.fetchUser();
    emit(state.copyWith(status: HomeStatus.idle, user: user));
  }
}