import 'package:injectable/injectable.dart';

import '../../internal/api_client.dart';
import '../../domain/repositories/post_repository.dart';
import '../../domain/repositories/post_repository_impl.dart';

@module
abstract class RepositoryModule {
  @singleton
  PostRepository providePostRepository(ApiClient apiClient) =>
      PostRepositoryImpl(apiClient);
}