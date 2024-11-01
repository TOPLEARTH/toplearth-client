import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

//TODO- 가변 상태로 바꿔야 함.
Widget circularState() {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(16),
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
        children: [
          const Text(
            '동국님,\n잘하고 있어요!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          CircularPercentIndicator(
            radius: 40,
            lineWidth: 8.0,
            percent: 0.232,
            center: const Text(
              "23.2\nkm",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12),
            ),
            progressColor: Colors.indigo,
          ),
          const SizedBox(height: 8),
          const Text(
            '목표 : 100KM',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text('목표 설정하기'),
          ),
        ],
      ),
    ),
  );
}
