import 'package:blog_app/core/errors/failure.dart';
import 'package:blog_app/core/params/params.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';
import 'package:dartz/dartz.dart';

abstract class PostRepository {
  Future<Either<Failure, PostEntity>> getAllPosts();
  Future<Either<Failure, PostEntity>> getPost({required PostParams params});
  Future<Either<Failure, PostEntity>> addPost({required PostParams params});
  Future<Either<Failure, PostEntity>> updatepost({required PostParams params});
  Future<Either<Failure, PostEntity>> deletepost({required PostParams params});
}

/*
Get all posts
Get a single post
Add a new post
Update a post
Delete a post
*/