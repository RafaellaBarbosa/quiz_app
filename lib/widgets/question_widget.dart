import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: AppColors.coolAqua,
          border: Border(),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
