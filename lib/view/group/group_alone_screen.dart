import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toplearth/utility/system/font_system.dart';
import 'package:toplearth/view/base/base_screen.dart';
import 'package:toplearth/view_model/group/group_alone_view_model.dart';
import 'package:toplearth/widget/appbar/default_svg_appbar.dart';
import 'package:toplearth/widget/button/rounded_rectangle_text_button.dart';

class GroupAloneScreen extends BaseScreen<GroupAloneViewModel> {
  const GroupAloneScreen({super.key});

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
    return Obx(() {
      if (viewModel.isLoading) {
        return const Center(child: CircularProgressIndicator());
      }

      return Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('그룹 들어가기', style: FontSystem.KR16B),
                  // 그룹 코드 입력 필드
                  // 그룹 코드 입력 필드
                  // 그룹 코드 입력 필드
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TextField(
                            controller: viewModel.groupCodeController,
                            decoration: InputDecoration(
                              hintText: '그룹 코드를 입력하세요',
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.indigo,
                                  width: 1.5,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const RoundedRectangleTextButton(
                        height: 48,
                        backgroundColor: Colors.indigo,
                        text: "그룹 들어가기",
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 16),
// 새로운 그룹 만들기 섹션
                  const Text('새로운 그룹 만들기', style: FontSystem.KR16B),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: TextField(
                            controller: viewModel.newGroupNameController,
                            decoration: InputDecoration(
                              hintText: '그룹 이름을 설정하세요',
                              hintStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.indigo,
                                  width: 1.5,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const RoundedRectangleTextButton(
                        height: 48,
                        backgroundColor: Colors.indigo,
                        text: "그룹 만들기",
                        textStyle: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  // 3D Earth 모델 (여기서는 이미지로 대체)
                  // const Center(child: EarthGLBScene()),
                ],
              ),
            ),
          ),
          // 하단 네비게이션 바
        ],
      );
    });
  }
}
