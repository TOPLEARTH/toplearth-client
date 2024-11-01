import 'package:flutter/material.dart';

Widget buildDayCircle(String day, bool completed, {bool isToday = false}) {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: completed ? Colors.indigo : Colors.grey[300],
      border: isToday ? Border.all(color: Colors.indigo, width: 2) : null,
    ),
    child: Center(
      child: Text(
        day,
        style: TextStyle(
          color: completed || !isToday ? Colors.white : Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
