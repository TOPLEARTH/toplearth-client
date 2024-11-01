import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toplearth/app/factory/secure_storage_factory.dart';

import 'package:toplearth/provider/token/token_provider.dart';
import 'package:toplearth/utility/static/app_routes.dart';

class LoginMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    TokenProvider userLocalProvider = SecureStorageFactory.tokenProvider;

    if (userLocalProvider.accessToken == null) {
      return const RouteSettings(name: Routes.LOGIN);
    }

    return null;
  }
}
