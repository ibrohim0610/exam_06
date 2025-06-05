class CategoriesModel {
  final int id;
  final String image;
  final String title;
  final int totalCourses;

  CategoriesModel({
    required this.id,
    required this.image,
    required this.title,
    required this.totalCourses,
  });

  factory CategoriesModel.fromJson(Map<String, dynamic>json){
    return CategoriesModel(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        totalCourses: json['totalCourses']);
  }
}
