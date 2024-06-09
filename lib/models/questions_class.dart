class QuestionClass {
  const QuestionClass(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> shuffleAnswers() {
    final shuffeledanswers = List.of(answers);
    shuffeledanswers.shuffle();
    return shuffeledanswers;
  }
}
