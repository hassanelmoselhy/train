import 'package:blog_app/core/routes/routes_name.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';
import 'package:blog_app/features/posts/presentation/cubit/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BlogHome extends StatelessWidget {
  const BlogHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blog Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => context.read<PostCubit>().addPost(),
            tooltip: 'Add Post',
          ),
        ],
      ),
      body: BlocBuilder<PostCubit, List<PostEntity>>(
        builder: (context, posts) {
          if (posts.isEmpty) {
            return const Center(child: Text('No posts available.'));
          }

          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Card(
                child: ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.postDetails,
                      arguments: {'post': post},
                    );
                  },
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () => context.read<PostCubit>().updatePost(index),
                        tooltip: 'Update Post',
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => context.read<PostCubit>().deletePost(index),
                        tooltip: 'Delete Post',
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
