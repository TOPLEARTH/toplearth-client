import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toplearth/utility/system/font_system.dart';
import 'package:toplearth/view/base/base_screen.dart';
import 'package:toplearth/view/home/component/daily_check.dart';
import 'package:toplearth/view/home/component/monthly_quest_card.dart';
import 'package:toplearth/view/home/widget/circular_state.dart';
import 'package:toplearth/view/home/widget/daily_quest_card.dart';
import 'package:toplearth/view_model/home/home_view_model.dart';
import 'package:toplearth/widget/appbar/default_svg_appbar.dart';

class HomeScreen extends BaseScreen<HomeViewModel> {
  const HomeScreen({super.key});

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

      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 상태 메시지
              const Text(
                  //TODO- 가변 상태로 바꿔야 함.
                  '동국님은 3주 연속 플로깅을 하고 있어요',
                  style: FontSystem.KR20B),

              const SizedBox(height: 20),

              // Daily 퀘스트 카드
              dailyQuestCard(),
              const SizedBox(height: 20),

              // Monthly 퀘스트와 현재 상태
              Row(
                children: [
                  // Monthly 퀘스트
                  monthlyQuestCard(),
                  const SizedBox(width: 16),
                  // 현재 상태
                  circularState(),
                ],
              ),
              const SizedBox(height: 20),
              // 출석체크
              dailyCheck()
            ],
          ),
        ),
      );
    });
  }
}
