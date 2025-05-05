import '../models/post.dart';

abstract class PostRepository {
  Future<Post> getPost(int id);
  Future<List<Post>> getPosts(int page, int limit);
}