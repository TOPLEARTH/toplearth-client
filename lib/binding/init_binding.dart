import 'package:get/get.dart';
import 'package:toplearth/provider/auth/auth_provider.dart';
import 'package:toplearth/provider/auth/auth_provider_impl.dart';
import 'package:toplearth/provider/user/user_remote_provider.dart';
import 'package:toplearth/provider/user/user_remote_provider_impl.dart';
import 'package:toplearth/repository/auth/auth_repository.dart';
import 'package:toplearth/repository/auth/auth_repository_impl.dart';
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

    // Repositories
    Get.putAsync<AuthRepository>(
      () async => AuthRepositoryImpl(),
    );
    Get.lazyPut<UserRepository>(() => UserRepositoryImpl());
  }
}
