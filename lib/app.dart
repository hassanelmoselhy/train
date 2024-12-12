import 'package:blog_app/core/routes/routes_name.dart';
import 'package:blog_app/features/posts/presentation/cubit/post_cubit.dart';
import 'package:blog_app/features/posts/presentation/screens/blog.dart';
import 'package:blog_app/features/posts/presentation/screens/postdetails.dart'; 
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:flutter/material.dart';

class BlogApp extends StatelessWidget {
  const BlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
            create: (_) => PostCubit()..initializePosts(),

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.initial,
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case RoutesName.initial:
              return MaterialPageRoute(builder: (_) => const BlogHome());
            case RoutesName.postDetails:
              final args = settings.arguments as Map<String, dynamic>;
              return MaterialPageRoute(
                builder: (_) => PostDetails(post: args['post']),
              );
            default:
              return MaterialPageRoute(
                builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ),
              );
          }
        },
      ),
    );
  } 
}