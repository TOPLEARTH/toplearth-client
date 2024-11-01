import 'package:flutter/material.dart';
import 'package:toplearth/utility/system/font_system.dart';

//TODO- 가변 상태로 바꿔야 함.
Widget dailyQuestCard() {
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
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'DAILY 퀘스트',
                    style: FontSystem.KR16B,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      '10',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Text('3km이상 플로깅하기'),
                  SizedBox(width: 4),
                  Icon(Icons.check, color: Colors.green),
                ],
              ),
            ],
          ),
        ),
        const Icon(Icons.directions_walk, size: 32),
      ],
    ),
  );
}
