class ArticalesModel {
  final String? image;
  final String title;
  final String? description;
  final String url;

  ArticalesModel({
    required this.url,
    required this.image,
    required this.title,
    required this.description,
  });

  factory ArticalesModel.fromJson(Map<String, dynamic> json) {
    return ArticalesModel(
      image: json['image_url'],
      title: json['title'],
      description: json['description'],
      url: json['link'],
    );
  }
}
