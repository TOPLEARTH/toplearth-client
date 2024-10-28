import "package:flutter/cupertino.dart";

import "app/factory/secure_storage_factory.dart";
import "app/main_app.dart";

void main() async {
  await onSystemInit();
  runApp(const MainApp());
}

Future<void> onSystemInit() async {
  // WidgetsBinding
  WidgetsFlutterBinding.ensureInitialized();

  // Date Binding
  // await initializeDateFormatting();
  // tz.initializeTimeZones();

  // Environment
  // await dotenv.load(fileName: "assets/config/.env");
  // KakaoSdk.init(nativeAppKey: "${dotenv.env['KAKAO_APP_KEY']}");

  // Factory
  await SecureStorageFactory().onInit();
}
