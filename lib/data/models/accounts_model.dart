class AccountsModel {
  final int id;
  final String title;
  final String link;
  final String icon;

  AccountsModel({
    required this.id,
    required this.title,
    required this.link,
    required this.icon,
  });
  factory AccountsModel.fromJson(Map<String, dynamic> json) {
    return AccountsModel(
      id: json['id'] ,
      title: json['title'],
      link: json['link'],
      icon: json['icon'],
    );
  }
}
