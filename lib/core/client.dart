import 'package:dio/dio.dart';
import 'package:exam_6/core/interceptor.dart';

import '../data/models/create_user_model.dart';

class ApiClient {
  ApiClient(){
    dio = Dio(BaseOptions(baseUrl: "http://192.168.26.146:8888/api/v1",validateStatus: (value)=>true));
    dio.interceptors.add(AuthInterceptor());
  }
  late final Dio dio;


  Future<Map<String, dynamic>>login({required String login, required String password})async{
    var response =  await dio.post("/auth/login", data: {"login":login, "password":password});
    if (response.statusCode == 200) {
      var data = Map<String, String>.from(response.data);
      String token = data["accessToken"]!.toString();
      return{"result": true, "token":token};
    }else{
      return{"result": false,"token":null};
    }
  }
  Future<Map<String, dynamic>> signUp({required CreateUserModel user}) async {
    var responce = await dio.post("/auth/register", data: user.toJson());
    if (responce.statusCode == 201) {
      String token = responce.data["accessToken"];
      return {"result": true, "token": token};
    } else {
      return {"result": true, "token": null};
    }
  }
  Future<List<dynamic>> fetchCourses()async{
    var response = await dio.get("/courses/list");
    List<dynamic>data = response.data;
    if (response.statusCode == 200) {
      return data;
    }else{
      throw Exception("Courses not found");
    }
  }
  Future<List<dynamic>> fetchInterviews()async{
    var response = await dio.get("/interviews/list");
    List<dynamic>data = response.data;
    if (response.statusCode == 200) {
      return data;
    }else{
      throw Exception("Interviews not found");
    }
  }

  Future<List<dynamic>>fetchCategories()async{
    var response = await dio.get("/categories/list");
    if (response.statusCode == 200) {
      return response.data;
    }else{
      throw Exception("Categories not found");
    }
  }
   Future<List<dynamic>> fetchAccounts()async{
    var response = await dio.get("/social-accounts/list");
    List<dynamic>data = response.data;
    if (response.statusCode == 200) {
      return data;
    }else{
      throw Exception("Social Accounts not found");
    }
  }
  Future<dynamic>fetchUser()async{
    var response = await dio.get("/auth/me");
    if (response.statusCode == 200) {
      return response.data;
    }else{
      throw Exception("User not found");
    }
  }

}
