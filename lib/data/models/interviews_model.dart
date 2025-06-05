class InterviewsModel {
  final int id;
  final String user;
  final String title;
  final String image;
  final int duration;

  InterviewsModel({
    required this.id,
    required this.title,
    required this.user,
    required this.image,
    required this.duration,
  });

  factory InterviewsModel.fromJson(Map<String, dynamic>json){
    return InterviewsModel(
        id: json['id'],
        title: json['title'],
        user: json['user'],
        image: json['image'],
        duration: json['duration']);
  }
}