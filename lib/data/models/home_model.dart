class CoursesModel {
  final int id;
  final String user;
  final String category;
  final String title;
  final String image;
  final int price;
  final num rating;
  final String status;

  CoursesModel({
    required this.id,
    required this.user,
    required this.category,
    required this.title,
    required this.image,
    required this.price,
    required this.rating,
    required this.status,
  });

  factory CoursesModel.fromJson(Map<String, dynamic> json) {
    return CoursesModel(
      id: json['id'],
      user: json['user'],
      category: json['category'],
      title: json['title'],
      image: json['image'],
      price: json['price'],
      rating: json['rating'],
      status: json['status'],
    );
  }
}
