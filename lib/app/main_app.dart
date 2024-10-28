import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:toplearth/binding/init_binding.dart';
import 'package:toplearth/utility/static/app_pages.dart';
import 'package:toplearth/utility/static/app_routes.dart';
import 'package:toplearth/utility/system/color_system.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    // FlutterNativeSplash.remove();
    return GetMaterialApp(
      // App Title
      title: "TOPLEARTH",
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('ko', 'KR'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      // Theme
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Pretendard',
        colorSchemeSeed: ColorSystem.white, //
        scaffoldBackgroundColor: const Color(0xFFF3F1EE),
      ),

      // initialRoute: Routes.LOGIN, // 로그인 화면으로 시작(TEST)
      initialRoute: Routes.ROOT,
      initialBinding: InitBinding(),
      getPages: appPages,
    );
  }
}
