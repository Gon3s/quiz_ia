import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../data/repository/quiz_repository_impl.dart';
import '../entities/quiz.dart';
import '../repository/quiz_repository.dart';

part 'get_quiz.g.dart';

@riverpod
GetQuizUseCase getQuiz(GetQuizRef ref) {
  final repository = ref.read(quizRepositoryProvider);
  return GetQuizUseCase(repository);
}

class GetQuizUseCase {
  final QuizRepository _repository;

  GetQuizUseCase(this._repository);

  Future<Either<Failure, List<Quiz>>> call({required String level, required String theme}) async {
    // fake delay
    // await Future.delayed(const Duration(seconds: 5));
    return _repository.getQuizzes(level: level, theme: theme);
  }
}
