import 'package:blog_app/core/routes/routes_name.dart';
import 'package:blog_app/features/posts/presentation/screens/blog.dart';
import 'package:blog_app/features/posts/presentation/screens/postdetails.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case RoutesName.blogHome:
        return MaterialPageRoute(builder: (_) => const BlogHome());
      case RoutesName.postDetails:
        if (args is PostEntity) {
          return MaterialPageRoute(builder: (_) => PostDetails(post: args));
        } else {
          throw Exception('Invalid arguments for PostDetails');
        }
      default:
        throw Exception('Route not found: ${settings.name}');
    }
  }
}
