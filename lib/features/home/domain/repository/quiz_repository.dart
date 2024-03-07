import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/quiz.dart';

abstract class QuizRepository {
  Future<Either<Failure, List<Quiz>>> getQuizzes({required String level, required String theme});
}
