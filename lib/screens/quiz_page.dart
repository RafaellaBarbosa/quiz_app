import 'package:flutter/material.dart';
import 'package:quiz_app/core/utils/colors.dart';
import 'package:quiz_app/core/utils/text_styles.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/screens/quiz_result_page.dart';
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
  int _currentQuestionIndex = 0;
  final List<QuestionModel> _questions = [
    QuestionModel(
      id: 1,
      question: "Qual ação irá subir mais hoje?",
      options: [
        Option(label: 'A', title: 'PETR4'),
        Option(label: 'B', title: 'VALE3'),
        Option(label: 'C', title: 'ITUB4'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 1, total: 7),
      token: 200,
    ),
    QuestionModel(
      id: 2,
      question: "Qual índice irá fechar em alta hoje?",
      options: [
        Option(label: 'A', title: 'IBOVESPA'),
        Option(label: 'B', title: 'IBRAX-50'),
        Option(label: 'C', title: 'IBRAX-100'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 2, total: 7),
      token: 200,
    ),
    QuestionModel(
      id: 3,
      question: "Qual setor irá performar melhor hoje?",
      options: [
        Option(label: 'A', title: 'Energia'),
        Option(label: 'B', title: 'Finanças'),
        Option(label: 'C', title: 'Tecnologia'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 3, total: 7),
      token: 200,
    ),
    QuestionModel(
      id: 4,
      question: "Qual ação irá pagar dividendos hoje?",
      options: [
        Option(label: 'A', title: 'PETR4'),
        Option(label: 'B', title: 'VALE3'),
        Option(label: 'C', title: 'ITUB4'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 4, total: 7),
      token: 200,
    ),
    QuestionModel(
      id: 5,
      question: "Qual índice irá ter maior volatilidade hoje?",
      options: [
        Option(label: 'A', title: 'IBOVESPA'),
        Option(label: 'B', title: 'IBRAX-50'),
        Option(label: 'C', title: 'IBRAX-100'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 5, total: 7),
      token: 200,
    ),
    QuestionModel(
      id: 6,
      question: "Qual ação irá ter maior liquidez hoje?",
      options: [
        Option(label: 'A', title: 'PETR4'),
        Option(label: 'B', title: 'VALE3'),
        Option(label: 'C', title: 'ITUB4'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 6, total: 7),
      token: 200,
    ),
    QuestionModel(
      id: 7,
      question: "Qual setor irá ter maior crescimento no próximo trimestre?",
      options: [
        Option(label: 'A', title: 'Energia'),
        Option(label: 'B', title: 'Finanças'),
        Option(label: 'C', title: 'Tecnologia'),
      ],
      correctAnswer: 'A',
      progress: Progress(current: 7, total: 7),
      token: 200,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    QuestionModel currentQuestion = _questions[_currentQuestionIndex];
    int correctAnswers = 0;
    int totalScore = 0;

    return Scaffold(
      backgroundColor: AppColors.begeClaro,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TokenBadge(point: currentQuestion.token.toString()),
                  Text("Fantasy Quiz #${currentQuestion.id}",
                      style: TextStyles.largeSemibold()),
                  CircleAvatar(
                    backgroundColor: AppColors.cinzaClaro,
                    child: IconButton(
                      icon: const Icon(Icons.close,
                          color: AppColors.deepCharcoal, size: 24),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: currentQuestion.progress.current /
                            currentQuestion.progress.total,
                        backgroundColor: AppColors.cinzaClaro,
                        color: AppColors.greenSuccess,
                        minHeight: 12,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Flexible(
                    flex: 1,
                    child: Text(
                        "${currentQuestion.progress.current}/${currentQuestion.progress.total}",
                        style: TextStyles.smallSemibold(
                            color: AppColors.grayMedium)),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              QuestionWidget(text: currentQuestion.question),
              const SizedBox(height: 64),
              ...currentQuestion.options.map((option) {
                return Column(
                  children: [
                    OptionTile(
                      label: option.label,
                      title: option.title,
                      isSelected: _selectedOption == option.label,
                      onSelected: (isSelected) {
                        setState(() {
                          _selectedOption = isSelected ? option.label : null;
                        });
                      },
                    ),
                    const SizedBox(height: 30),
                  ],
                );
              }),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _selectedOption != null
                      ? _currentQuestionIndex < _questions.length - 1
                          ? () {
                              if (_selectedOption ==
                                  currentQuestion.correctAnswer) {
                                correctAnswers++;
                                totalScore += currentQuestion.token;
                              }
                              setState(() {
                                _currentQuestionIndex++;
                                _selectedOption = null;
                              });
                            }
                          : () {
                              if (_selectedOption ==
                                  currentQuestion.correctAnswer) {
                                correctAnswers++;
                                totalScore += currentQuestion.token;
                              }
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuizResultPage(
                                    score: totalScore,
                                    correctAnswers: correctAnswers,
                                  ),
                                ),
                              );
                            }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedOption != null
                        ? AppColors.greenSuccess
                        : AppColors.cinzaClaro,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    _currentQuestionIndex < _questions.length - 1
                        ? "CONTINUE"
                        : "FINALIZAR",
                    style: TextStyles.mediumSemibold(
                      color: _selectedOption != null
                          ? _currentQuestionIndex < _questions.length - 1
                              ? AppColors.cinzaClaro
                              : AppColors.deepCharcoal
                          : AppColors.deepCharcoal.withOpacity(0.5),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
