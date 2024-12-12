import 'package:blog_app/core/api/api_consumer.dart';
import 'package:blog_app/core/api/endpoints.dart';
import 'package:blog_app/core/params/params.dart';
import 'package:blog_app/features/posts/data/model/post_model.dart';

class PostRemoteData {
  final ApiConsumer api;

  PostRemoteData({required this.api});

  Future<PostModel> getAllPosts() async {
    final response = await api.get("${EndPoints.post}/");
    return PostModel.fromJson(response);
  }

  Future<PostModel> getPost(PostParams params) async {
    final response = await api.get("${EndPoints.post}/${params.id}");
    return PostModel.fromJson(response);
  }

  Future<PostModel> addPost(PostParams params) async {
    final response = await api.get("${EndPoints.post}/${params.id}");
    return PostModel.fromJson(response);
  }

  Future<PostModel> updatePost(PostParams params) async {
    final response = await api.get("${EndPoints.post}/${params.id}");
    return PostModel.fromJson(response);
  }

  Future<PostModel> deletePost(PostParams params) async {
    final response = await api.get("${EndPoints.post}/${params.id}");
    return PostModel.fromJson(response);
  }
}
