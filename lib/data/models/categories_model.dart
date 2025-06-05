class CategoriesModel {
  final int id;
  final String title;
  final String image;

  final int totalCourses;

  CategoriesModel({
    required this.id,
    required this.title,
    required this.image,
    required this.totalCourses,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic>json){
    return CategoriesModel(
        id: json['id'],
        title: json['title'],
        image: json['icon'],

        totalCourses: json['totalCourses']);
  }
}
