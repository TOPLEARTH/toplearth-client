import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toplearth/view/base/base_screen.dart';
import 'package:toplearth/view/calendar/calendar_screen.dart';
import 'package:toplearth/view/group/group_alone_screen.dart';
import 'package:toplearth/view/home/home_screen.dart';
import 'package:toplearth/view/my/my_screen.dart';
import 'package:toplearth/view/root/widget/custom_bottom_navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:toplearth/view_model/root/root_view_model.dart';

class RootScreen extends BaseScreen<RootViewModel> {
  const RootScreen({super.key});

  @override
  Widget buildBody(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: viewModel.selectedIndex,
        children: const [
          MyScreen(),
          Text("VS 화면"),
          HomeScreen(),
          CalendarScreen(),
          GroupAloneScreen(),
        ],
      ),
    );
  }

  @override
  bool get extendBodyBehindAppBar => true;

  @override
  Widget? buildBottomNavigationBar(BuildContext context) =>
      const CustomBottomNavigationBar();
}
