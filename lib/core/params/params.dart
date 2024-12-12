// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';

class PostParams {
  final String id;
  final PostEntity post;

  PostParams({
    required this.id,
    required this.post,
  });
}
