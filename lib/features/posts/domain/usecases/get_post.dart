import 'package:blog_app/core/errors/failure.dart';
import 'package:blog_app/core/params/params.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';
import 'package:blog_app/features/posts/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

class GetPost {
  final PostRepository repository;

  GetPost({required this.repository});

  Future<Either<Failure, PostEntity>> call({required PostParams params}) {
    return repository.getPost(params: params);
  }
}