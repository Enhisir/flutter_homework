import 'package:lazy_loading/internal/api_client.dart';
import 'package:lazy_loading/domain/models/post.dart';
import 'post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final ApiClient _apiClient;

  PostRepositoryImpl(this._apiClient);

  @override
  Future<Post> getPost(int id) async {
    final response = await _apiClient.get('posts/$id');
    return Post.fromJson(response.data);
  }

  @override
  Future<List<Post>> getPosts(int page, int limit) async {
    final response = await _apiClient.get('posts');
    final allPosts = (response.data as List)
        .map((json) => Post.fromJson(json))
        .toList();

    final start = (page - 1) * limit;
    final end = start + limit;
    return allPosts.sublist(
      start.clamp(0, allPosts.length),
      end.clamp(0, allPosts.length),
    );
  }
}