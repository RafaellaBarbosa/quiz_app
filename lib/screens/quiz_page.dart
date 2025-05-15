import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';
import 'package:quiz_app/widgets/option_tile.dart';
import 'package:quiz_app/widgets/question_widget.dart';
import 'package:quiz_app/widgets/token_badge.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.begeClaro,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TokenBadge(
                    point: '200',
                  ),
                  Text("Fantasy Quiz #156",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Icon(Icons.close),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.2,
                        backgroundColor: Colors.grey[300],
                        color: Colors.green,
                        minHeight: 6,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Flexible(
                    flex: 1,
                    child: Text("1/5", style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const QuestionWidget(
                text:
                    "PREDICT THE TOP LOSER (for tomorrow) across these indices",
              ),
              const SizedBox(height: 24),
              OptionTile(
                label: 'A',
                title: 'NIFTY50',
                isSelected: _selectedOption == 'A',
                onSelected: (isSelected) {
                  setState(() {
                    _selectedOption = isSelected ? 'A' : null;
                  });
                },
              ),
              OptionTile(
                label: 'B',
                title: 'NIFTYNEXT50',
                isSelected: _selectedOption == 'B',
                onSelected: (isSelected) {
                  setState(() {
                    _selectedOption = isSelected ? 'B' : null;
                  });
                },
              ),
              OptionTile(
                label: 'C',
                title: 'NIFTYBANK',
                isSelected: _selectedOption == 'C',
                onSelected: (isSelected) {
                  setState(() {
                    _selectedOption = isSelected ? 'C' : null;
                  });
                },
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[400],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
