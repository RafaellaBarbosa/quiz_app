import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';
import 'package:quiz_app/core/utils/images.dart';
import 'package:quiz_app/core/utils/text_styles.dart';

class TokenBadge extends StatelessWidget {
  const TokenBadge({super.key, required this.point});

  final String point;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.cinzaClaro,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.midnightBlue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Image.asset(
                AppImages.token_icon,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(point, style: TextStyles.smallSemibold(AppColors.midnightBlue))
        ],
      ),
    );
  }
}
