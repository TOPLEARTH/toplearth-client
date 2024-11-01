import 'package:flutter/material.dart';
import 'package:toplearth/utility/system/font_system.dart';
import 'package:toplearth/view/base/base_screen.dart';
import 'package:toplearth/view/my/scene/earth_3d_scene.dart';
import 'package:toplearth/view_model/my/my_view_model.dart';
import 'package:toplearth/widget/appbar/default_svg_appbar.dart';
import 'package:toplearth/widget/button/rounded_rectangle_text_button.dart';
import 'package:toplearth/widget/glassmorphysm/GlassmorphicModal.dart';

class MyScreen extends BaseScreen<MyViewModel> {
  const MyScreen({super.key});

  @override
  bool get wrapWithInnerSafeArea => true;

  @override
  bool get wrapWithOuterSafeArea => true;

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: DefaultSvgAppBar(
          svgPath: 'assets/images/header_logo.svg',
          height: 60,
        ));
  }

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      children: [
        const EarthGLBScene(),
        Positioned(
          top: 10,
          left: 10,
          right: 10,
          child:
              GlassmorphicModal(width: 300, opacity: 0.8, child: _testWidget()),
        ),
      ],
    );
  }

  Widget _testWidget() {
    return const Column(
      children: [
        Text("Test", style: FontSystem.KR36B),
        Text("테스트 용입니덩덩 테스트 최고 최고", style: FontSystem.KR20M),
        RoundedRectangleTextButton(
          backgroundColor: Colors.black,
          textStyle: TextStyle(color: Colors.white),
          text: 'test',
        )
      ],
    );
  }
}
