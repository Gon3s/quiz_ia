import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/quiz.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@freezed
class QuizModel with _$QuizModel {
  const factory QuizModel({
    required String level,
    required String subject,
    required List<QuestionModel> questions,
  }) = _QuizModel;
  const QuizModel._();

  factory QuizModel.fromJson(Map<String, dynamic> json) => _$QuizModelFromJson(json);
}

@freezed
class QuestionModel with _$QuestionModel {
  const factory QuestionModel({
    required String question,
    required List<String> answers,
    @JsonKey(name: 'correct_answer') required int correctAnswer,
    required String explanation,
  }) = _QuestionModel;
  const QuestionModel._();

  factory QuestionModel.fromJson(Map<String, dynamic> json) => _$QuestionModelFromJson(json);

  Quiz toEntity() {
    return Quiz(
      question: question,
      answers: answers,
      correctAnswer: correctAnswer,
      explanation: explanation,
    );
  }
}
