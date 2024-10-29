import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toplearth/view/base/base_widget.dart';
import 'package:toplearth/view/root/widget/custom_bottom_navigation_bar/component/custom_bottom_navigation_item.dart';
import 'package:toplearth/view_model/root/root_view_model.dart';

class CustomBottomNavigationBar extends BaseWidget<RootViewModel> {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget buildView(BuildContext context) {
    return Container(
      height: 88,
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: GetPlatform.isAndroid ? 20 : 32,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: _buildItemViews(),
      ),
    );
  }

  List<Widget> _buildItemViews() {
    List<String> bottomBarName = [
      'VS',
      'Home',
      'News',
    ];

    List<String> inActiveAssetPath = [
      "assets/icons/bottom_navigation/my.svg",
      "assets/icons/bottom_navigation/plogging.svg",
      "assets/icons/bottom_navigation/home.svg",
      "assets/icons/bottom_navigation/store.svg",
      "assets/icons/bottom_navigation/group.svg"
    ];

    List<String> activeAssetPath = [
      "assets/icons/bottom_navigation/my_active.svg",
      'assets/icons/bottom_navigation/plogging_active.svg',
      'assets/icons/bottom_navigation/home_active.svg',
      'assets/icons/bottom_navigation/store_active.svg',
      "assets/icons/bottom_navigation/group_active.svg"
    ];

    return List.generate(
      5,
      (index) => Expanded(
        child: GestureDetector(
          onTap: () => {
            viewModel.fetchIndex(index),
          },
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () {
                    bool isActive = viewModel.selectedIndex == index;
                    String assetPath = isActive
                        ? activeAssetPath[index]
                        : inActiveAssetPath[index];
                    return CustomBottomNavigationItem(
                      isActive: isActive,
                      assetPath: assetPath,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
