import 'package:blog_app/core/errors/expentions.dart';
import 'package:blog_app/core/errors/failure.dart';
import 'package:blog_app/core/params/params.dart';
import 'package:blog_app/features/posts/data/data_source/post_remote_data.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';
import 'package:blog_app/features/posts/domain/repository/post_repository.dart';
import 'package:dartz/dartz.dart';

class PostRepositoryImpl extends PostRepository {
  final PostRemoteData remoteDataSource;

  PostRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, PostEntity>> getAllPosts() async {
    try {
      final remotePost = await remoteDataSource.getAllPosts();
      return Right(remotePost);
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }

  @override
  Future<Either<Failure, PostEntity>> getPost(
      {required PostParams params}) async {
    try {
      final remotePost = await remoteDataSource.getPost(params);
      return Right(remotePost);
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }

  @override
  Future<Either<Failure, PostEntity>> addPost(
      {required PostParams params}) async {
    try {
      final remotePost = await remoteDataSource.addPost(params);
      return Right(remotePost);
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }

  @override
  Future<Either<Failure, PostEntity>> deletepost(
      {required PostParams params}) async {
    try {
      final remotePost = await remoteDataSource.deletePost(params);
      return Right(remotePost);
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }

  @override
  Future<Either<Failure, PostEntity>> updatepost(
      {required PostParams params}) async {
    try {
      final remotePost = await remoteDataSource.updatePost(params);
      return Right(remotePost);
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }
}
