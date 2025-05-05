import 'package:injectable/injectable.dart';
import 'package:lazy_loading/domain/models/post.dart';
import 'package:lazy_loading/domain/repositories/post_repository.dart';

@injectable
class GetPost {
  final PostRepository _repository;

  GetPost(this._repository);

  Future<Post> call(int id) => _repository.getPost(id);
}