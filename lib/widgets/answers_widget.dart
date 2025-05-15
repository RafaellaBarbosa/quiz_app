import 'package:flutter/material.dart';

import '../core/utils/colors.dart';

class AnswersWidget extends StatelessWidget {
  const AnswersWidget({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: const ButtonStyle(
        minimumSize: WidgetStatePropertyAll(Size(double.maxFinite, 30)),
        backgroundColor: WidgetStatePropertyAll(
          AppColors.softSky,
        ),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
