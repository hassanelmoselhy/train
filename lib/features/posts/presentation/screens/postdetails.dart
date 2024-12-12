import 'package:blog_app/features/posts/domain/entity/post_entity.dart';
import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  final PostEntity post;

  const PostDetails({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(post.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(post.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Text(post.body),
            const SizedBox(height: 20),
            Text('Views: ${post.views}'),
            Text('Tags: ${post.tags.join(', ')}'),
          ],
        ),
      ),
    );
  }
}
