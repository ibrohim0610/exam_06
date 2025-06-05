import 'package:exam_6/core/client.dart';
import 'package:exam_6/data/models/accounts_model.dart';
import 'package:exam_6/data/models/categories_model.dart';
import 'package:exam_6/data/models/home_model.dart';
import 'package:exam_6/data/models/interviews_model.dart';

class HomeRepository{
  final ApiClient client;
  List<CoursesModel> courses = [];
  List<CategoriesModel> categories = [];
  List<AccountsModel> accounts = [];
  List<InterviewsModel> interviews = [];
  HomeRepository({
    required this.client
  });
  Future<List<CoursesModel>> fetchCourses()async{
    var rawCourses = await client.fetchCourses();
    courses = rawCourses.map((c)=>CoursesModel.fromJson(c)).toList();
    return courses;
  }
  Future<List<CategoriesModel>> fetchCategories()async{
    var rawCourses = await client.fetchCategories();
    categories = rawCourses.map((a)=>CategoriesModel.fromJson(a)).toList();
    return categories;
  }
  Future<List<AccountsModel>> fetchAccounts()async{
    var rawCourses = await client.fetchCategories();
    accounts = rawCourses.map((a)=>AccountsModel.fromJson(a)).toList();
    return accounts;
  }
  Future<List<InterviewsModel>> fetchInterviews()async{
    var rawCourses = await client.fetchInterviews();
    interviews = rawCourses.map((a)=>InterviewsModel.fromJson(a)).toList();
    return interviews;
  }

}