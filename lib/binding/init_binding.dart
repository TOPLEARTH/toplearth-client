import 'package:get/get.dart';
import 'package:toplearth/provider/auth/auth_provider.dart';
import 'package:toplearth/provider/auth/auth_provider_impl.dart';
import 'package:toplearth/provider/quiz/quiz_remote_provider_impl.dart';
import 'package:toplearth/provider/user/user_remote_provider.dart';
import 'package:toplearth/provider/user/user_remote_provider_impl.dart';
import 'package:toplearth/repository/auth/auth_repository.dart';
import 'package:toplearth/repository/auth/auth_repository_impl.dart';
import 'package:toplearth/provider/quiz/quiz_remote_provider.dart';
import 'package:toplearth/provider/quiz_history/quiz_history_remote_provider.dart';
import 'package:toplearth/provider/quiz_history/quiz_history_remote_provider_impl.dart';
import 'package:toplearth/repository/quiz/quiz_repository.dart';
import 'package:toplearth/repository/quiz/quiz_repository_impl.dart';
import 'package:toplearth/repository/quiz_history/quiz_history_repository.dart';
import 'package:toplearth/repository/quiz_history/quiz_history_repository_impl.dart';
import 'package:toplearth/repository/user/user_repository.dart';
import 'package:toplearth/repository/user/user_repository_impl.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    // Providers
    Get.putAsync<AuthProvider>(
      () async => AuthProviderImpl(),
    );
    Get.lazyPut<UserRemoteProvider>(() => UserRemoteProviderImpl());
    Get.lazyPut<QuizRemoteProvider>(() => QuizRemoteProviderImpl());
    Get.lazyPut<QuizHistoryRemoteProvider>(
        () => QuizHistoryRemoteProviderImpl());

    // Repositories
    Get.putAsync<AuthRepository>(
      () async => AuthRepositoryImpl(),
    );
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
    Get.lazyPut<QuizRepository>(() => QuizRepositoryImpl());
    Get.lazyPut<QuizHistoryRepository>(() => QuizHistoryRepositoryImpl());
  }
}
