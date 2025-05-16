class QuestionModel {
  final int id;
  final String question;
  final List<Option> options;
  final Progress progress;
  final int token;
  final String correctAnswer;

  QuestionModel( {
    required this.id,
    required this.question,
    required this.options,
    required this.progress,
    required this.token,
    required this.correctAnswer,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      id: json['id'],
      question: json['question'],
      options: (json['options'] as List)
          .map((option) => Option.fromJson(option))
          .toList(),
      progress: Progress.fromJson(json['progress']),
      token: json['token'], correctAnswer: json['correctAnswer'],
    );
  }
}

class Option {
  String label;
  String title;

  Option({required this.label, required this.title});

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      label: json['label'],
      title: json['title'],
    );
  }
}

class Progress {
  int current;
  int total;

  Progress({required this.current, required this.total});

  factory Progress.fromJson(Map<String, dynamic> json) {
    return Progress(
      current: json['current'],
      total: json['total'],
    );
  }
}
