import 'package:flutter/material.dart';
import 'package:toplearth/utility/system/font_system.dart';

Widget progressBar(String title, double progress) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Text(title,
              style: FontSystem.KR12M.copyWith(color: Colors.grey[600])),
          const SizedBox(width: 4),
          const Icon(Icons.eco, color: Colors.green, size: 16),
        ],
      ),
      const SizedBox(height: 4),
      LinearProgressIndicator(
        value: progress,
        backgroundColor: Colors.grey[200],
        valueColor: const AlwaysStoppedAnimation<Color>(Colors.indigo),
      ),
      const SizedBox(height: 2),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '${(progress * 100).toInt()}%',
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    ],
  );
}
