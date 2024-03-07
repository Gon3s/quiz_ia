import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required String question,
    required int correctAnswer,
    required List<String> answers,
    required String explanation,
    String? selectedAnswer,
  }) = _Quiz;
  const Quiz._();

  bool get isCorrect => selectedAnswer == answers[correctAnswer];
}
