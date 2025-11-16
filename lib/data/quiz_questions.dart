class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswer;

  QuizQuestion({required this.question, required this.options, required this.correctAnswer});
}

class QuizQuestions {
  static List<QuizQuestion> questions = [
    QuizQuestion(
      question: "Sample question?",
      options: ["Option A", "Option B", "Option C"],
      correctAnswer: 0,
    ),
  ];
}