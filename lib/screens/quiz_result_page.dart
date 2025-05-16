import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';
import 'package:quiz_app/core/utils/images.dart';

class QuizResultPage extends StatelessWidget {
  final int score;
  final int correctAnswers;

  const QuizResultPage({
    super.key,
    required this.score,
    required this.correctAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F1EE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.close, size: 28),
                ],
              ),
              const SizedBox(height: 24),
              Image.asset(
                AppImages.gift_icon,
                height: 120,
              ),
              const SizedBox(height: 24),
              const Text(
                "Results of Fantasy Quiz #156",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.midnightBlue,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 24),
              ResultCard(
                icon: AppImages.money_icon,
                title: 'SCORE GAINED',
                value: score.toString(),
              ),
              const SizedBox(height: 12),
              ResultCard(
                icon: AppImages.check_icon,
                title: 'CORRECT PREDICTIONS',
                value: correctAnswers.toString(),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.greenSuccess,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "OKAY",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String icon;
  final String title;
  final String value;

  const ResultCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFFE8F8F5),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Image.asset(icon, fit: BoxFit.contain),
          ),
          const SizedBox(width: 12),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          const Spacer(),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
