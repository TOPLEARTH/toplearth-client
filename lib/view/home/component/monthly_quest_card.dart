import 'package:flutter/material.dart';
import 'package:toplearth/utility/system/font_system.dart';
import 'package:toplearth/view/home/widget/progress_bar.dart';

//TODO- 가변 상태로 바꿔야 함.
Widget monthlyQuestCard() {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(20),
      height: 260, // 고정된 높이 지정
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('MONTHLY 퀘스트', style: FontSystem.KR16B),
          const SizedBox(height: 12),
          progressBar('라벨링 40개', 0.6),
          const SizedBox(height: 8),
          progressBar('플로깅 10번', 0.6),
          const SizedBox(height: 8),
          progressBar('누적 40km 이상', 0.6),
        ],
      ),
    ),
  );
}
