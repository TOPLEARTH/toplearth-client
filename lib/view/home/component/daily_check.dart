import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toplearth/utility/static/app_routes.dart';
import 'package:toplearth/view/home/widget/day_circle.dart';

//TODO- 가변 상태로 바꿔야 함.
Widget dailyCheck() {
  return Container(
    padding: const EdgeInsets.all(16),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text(
                  '출석체크',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.eco, color: Colors.green, size: 16),
              ],
            ),
            TextButton(
              onPressed: () {
                Get.toNamed(Routes.CALENDAR);
              },
              child: const Text('내 플로깅 >'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildDayCircle('월', true),
            buildDayCircle('화', true),
            buildDayCircle('수', false, isToday: true),
            buildDayCircle('목', false),
            buildDayCircle('금', false),
            buildDayCircle('토', false),
            buildDayCircle('일', false),
          ],
        ),
      ],
    ),
  );
}
