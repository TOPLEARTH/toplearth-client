import 'package:get/get.dart';
import 'package:toplearth/binding/root_binding.dart';
import 'package:toplearth/view/calendar/calendar_screen.dart';
import 'package:toplearth/view/my/my_screen.dart';
import 'package:toplearth/view/root/root_screen.dart';

import 'app_routes.dart';

List<GetPage> appPages = [
  GetPage(
    name: Routes.ROOT,
    page: () => const RootScreen(),
    binding: RootBinding(),
    middlewares: [
      //TODO- 향후에 로그인 도입 후에 적용할 예정
      // LoginMiddleware(),
    ],
  ),
  GetPage(
    name: Routes.MY,
    page: () => const MyScreen(),
    binding: RootBinding(),
    middlewares: [
      // LoginMiddleware(),
    ],
  ),
  GetPage(
    name: Routes.CALENDAR,
    page: () => const CalendarScreen(),
    binding: RootBinding(),
    middlewares: [
      // LoginMiddleware(),
    ],
  ),
  GetPage(
    name: Routes.GROUP,
    page: () => const MyScreen(),
    binding: RootBinding(),
    middlewares: [
      // LoginMiddleware(),
    ],
  ),
];
