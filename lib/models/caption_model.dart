class CaptionModel {
  final String content;

  CaptionModel({required this.content});

  factory CaptionModel.fromJson(Map<String, dynamic> json) {
    return CaptionModel(content: json['captions']);
  }
}