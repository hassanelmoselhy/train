import 'package:blog_app/core/api/endpoints.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';

class PostModel extends PostEntity {
  PostModel(
      {required super.id,
      required super.title,
      required super.body,
      required super.tags,
      required super.reactions,
      required super.views});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        id: json[ApiKey.id],
        title: json[ApiKey.title],
        body: json[ApiKey.body],
        tags: json[ApiKey.tags],
        reactions: json[ApiKey.reactions],
        views: json[ApiKey.views]);
  }
}
