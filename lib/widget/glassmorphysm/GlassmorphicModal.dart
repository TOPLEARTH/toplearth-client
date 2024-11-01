import 'dart:ui';

import 'package:flutter/material.dart';

class GlassmorphicModal extends StatelessWidget {
  final Widget child;
  final double blurAmount;
  final Color backgroundColor;
  final double opacity;
  final double borderRadius;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;

  const GlassmorphicModal({
    super.key,
    required this.child,
    this.blurAmount = 5,
    this.backgroundColor = Colors.white,
    this.opacity = 0.2,
    this.borderRadius = 24,
    this.width, // 선택적 매개변수
    this.height, // 선택적 매개변수
    this.padding = EdgeInsets.zero, // 기본값으로 패딩 없음 설정
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // 너비 적용
      height: height, // 높이 적용
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blurAmount, sigmaY: blurAmount),
          child: Container(
            decoration: BoxDecoration(
              color: backgroundColor.withOpacity(opacity),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: padding, // 패딩 적용
            child: child,
          ),
        ),
      ),
    );
  }
}
