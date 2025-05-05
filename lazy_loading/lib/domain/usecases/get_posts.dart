import 'package:injectable/injectable.dart';
import 'package:lazy_loading/domain/models/post.dart';
import 'package:lazy_loading/domain/repositories/post_repository.dart';

@injectable
class GetPosts {
  final PostRepository _repository;

  GetPosts(this._repository);

  Future<List<Post>> call(int page, int limit) =>
      _repository.getPosts(page, limit);
}