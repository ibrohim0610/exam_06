// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 List<CoursesModel> get courses; List<CategoriesModel> get categories; List<AccountsModel> get accounts; List<InterviewsModel> get interviews; UserModel? get user; HomeStatus? get status;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.courses, courses)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.accounts, accounts)&&const DeepCollectionEquality().equals(other.interviews, interviews)&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(courses),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(accounts),const DeepCollectionEquality().hash(interviews),user,status);

@override
String toString() {
  return 'HomeState(courses: $courses, categories: $categories, accounts: $accounts, interviews: $interviews, user: $user, status: $status)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<CoursesModel> courses, List<CategoriesModel> categories, List<AccountsModel> accounts, List<InterviewsModel> interviews, UserModel? user, HomeStatus? status
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courses = null,Object? categories = null,Object? accounts = null,Object? interviews = null,Object? user = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CoursesModel>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoriesModel>,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AccountsModel>,interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewsModel>,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus?,
  ));
}

}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required final  List<CoursesModel> courses, required final  List<CategoriesModel> categories, required final  List<AccountsModel> accounts, required final  List<InterviewsModel> interviews, required this.user, required this.status}): _courses = courses,_categories = categories,_accounts = accounts,_interviews = interviews;
  

 final  List<CoursesModel> _courses;
@override List<CoursesModel> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

 final  List<CategoriesModel> _categories;
@override List<CategoriesModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<AccountsModel> _accounts;
@override List<AccountsModel> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

 final  List<InterviewsModel> _interviews;
@override List<InterviewsModel> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}

@override final  UserModel? user;
@override final  HomeStatus? status;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._courses, _courses)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._accounts, _accounts)&&const DeepCollectionEquality().equals(other._interviews, _interviews)&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_accounts),const DeepCollectionEquality().hash(_interviews),user,status);

@override
String toString() {
  return 'HomeState(courses: $courses, categories: $categories, accounts: $accounts, interviews: $interviews, user: $user, status: $status)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<CoursesModel> courses, List<CategoriesModel> categories, List<AccountsModel> accounts, List<InterviewsModel> interviews, UserModel? user, HomeStatus? status
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courses = null,Object? categories = null,Object? accounts = null,Object? interviews = null,Object? user = freezed,Object? status = freezed,}) {
  return _then(_HomeState(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CoursesModel>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoriesModel>,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AccountsModel>,interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewsModel>,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HomeStatus?,
  ));
}


}

// dart format on
