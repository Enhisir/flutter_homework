import 'package:get_it/get_it.dart';
import 'package:lazy_loading/domain/repositories/post_repository_impl.dart';
import 'package:lazy_loading/domain/usecases/get_post.dart';
import 'package:lazy_loading/domain/usecases/get_posts.dart';
import 'package:lazy_loading/presentation/pages/json_page/json_bloc.dart';

import '../presentation/pages/pagination_page/pagination_bloc.dart';
import 'api_client.dart';
import 'modules/network_module.dart';
import 'modules/repository_module.dart';
import '../domain/repositories/post_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  // Инициализация модулей
  final dio = NetworkModule().dio;
  final apiClient = ApiClient(dio);

  // Регистрация репозиториев
  final postRepository = PostRepositoryImpl(apiClient);
  getIt.registerSingleton<PostRepository>(postRepository);

  // Регистрация use cases
  getIt.registerFactory(() => GetPost(getIt<PostRepository>()));
  getIt.registerFactory(() => GetPosts(getIt<PostRepository>()));

  // Регистрация BLoCs
  getIt.registerFactory(() => JsonBloc(getIt<GetPost>()));
  getIt.registerFactory(() => PaginationBloc(getIt<GetPosts>()));
}
