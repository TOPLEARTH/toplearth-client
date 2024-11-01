import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:toplearth/widget/button/custom_icon_button.dart';

class DefaultSvgAppBar extends StatelessWidget {
  const DefaultSvgAppBar({
    super.key,
    this.isBack = false,
    required this.svgPath,
    required this.height,
    this.actions = const <CustomIconButton>[],
  });
  final bool isBack;
  final String svgPath;
  final double height;
  final List<CustomIconButton> actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: isBack
          ? IconButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              icon: SvgPicture.asset(
                "assets/icons/arrow_back_black.svg",
                width: 24,
                height: 24,
              ),
              onPressed: (() => {Get.back()}))
          : null,
      title: SvgPicture.asset(
        svgPath,
        height: height,
      ),
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.white,
      automaticallyImplyLeading: false,
      centerTitle: true,
      actions: actions,
    );
  }
}
