import 'package:get/get.dart';
import 'package:toplearth/view_model/calendar/calendar_view_model.dart';
import 'package:toplearth/view_model/group/group_alone_view_model.dart';
import 'package:toplearth/view_model/home/home_view_model.dart';
import 'package:toplearth/view_model/my/my_view_model.dart';

import '../view_model/root/root_view_model.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootViewModel>(() => RootViewModel());

    HomeBinding().dependencies();
  }
}

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyViewModel>(() => MyViewModel());
    Get.lazyPut<CalendarViewModel>(() => CalendarViewModel());
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
    Get.lazyPut<GroupAloneViewModel>(() => GroupAloneViewModel());
  }
}
