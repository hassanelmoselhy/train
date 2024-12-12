import 'package:bloc/bloc.dart';
import 'package:blog_app/features/posts/domain/entity/post_entity.dart';

class PostCubit extends Cubit<List<PostEntity>> {
  PostCubit() : super([]);

  void initializePosts() {
    final posts = List<PostEntity>.generate(
      10,
      (index) => PostEntity(
        id: index,
        title: 'Post $index',
        body: 'This is the body of post $index.',
        tags: ['tag1', 'tag2'],
        reactions: ['likes', 'dislikes'],
        views: '100',
      ),
    );
    emit(posts);
  }

  void addPost() {
    final newPost = PostEntity(
      id: state.length,
      title: 'Post ${state.length}',
      body: 'This is the body of post ${state.length}.',
      tags: ['new'],
      reactions: [],
      views: '0',
    );
    emit([...state, newPost]);
  }

  void updatePost(int index) {
    final updatedPost = PostEntity(
      id: state[index].id,
      title: '${state[index].title} (Updated)',
      body: '${state[index].body} (Updated)',
      tags: state[index].tags,
      reactions: state[index].reactions,
      views: state[index].views,
    );
    final newPosts = List<PostEntity>.from(state);
    newPosts[index] = updatedPost;
    emit(newPosts);
  }

  void deletePost(int index) {
    final newPosts = List<PostEntity>.from(state)..removeAt(index);
    emit(newPosts);
  }
}
