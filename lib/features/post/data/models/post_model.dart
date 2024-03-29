import '../../domain/entities/post.dart';

class PostModel extends Post {
  const PostModel(
      {required int? id, required String title, required String body})
      : super(id: id, title: title, body: body);

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(id: json['id'], title: json['title'], body: json['body']);
  }

  Map<String, dynamic> toJson(PostModel postModel) {
    return {
      'id': postModel.id,
      'title': postModel.title,
      'body': postModel.body
    };
  }
}
