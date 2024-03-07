import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/route/router.dart';
import '../../domain/entities/quiz.dart';
import '../../domain/usecases/get_quiz.dart';

part 'quiz_controller.freezed.dart';
part 'quiz_controller.g.dart';

@riverpod
class QuizController extends _$QuizController {
  @override
  Future<QuizState> build(String pseudo, String level, String theme) async {
    return _startQuiz(
      level: level,
      theme: theme,
      pseudo: pseudo,
    );
  }

  Future<QuizState> _startQuiz({
    required String level,
    required String theme,
    required String pseudo,
  }) async {
    state = const AsyncLoading();

    final res = await ref.watch(getQuizProvider).call(
          level: level,
          theme: theme,
        );

    return res.fold(
      (l) => throw l,
      (r) => QuizState(
        pseudo: pseudo,
        level: level,
        theme: theme,
        index: 1,
        quizzes: r,
      ),
    );
  }

  void selectAnswer({required Quiz quiz, required String answer}) {
    final data = state.valueOrNull;

    if (data != null) {
      final quizzes = data.quizzes;
      final updatedQuizzes = quizzes
          .map(
            (e) => e == quiz
                ? e.copyWith(
                    selectedAnswer: answer,
                  )
                : e,
          )
          .toList();

      state = AsyncValue.data(
        data.copyWith(
          quizzes: updatedQuizzes,
        ),
      );
    }
  }

  void nextQuestion({required int index, required PageController pageController}) {
    final data = state.valueOrNull;

    if (data != null) {
      final quizzes = data.quizzes;
      if (data.index < quizzes.length) {
        state = AsyncValue.data(
          data.copyWith(
            index: index + 1,
          ),
        );
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        ref.read(goRouterProvider).goNamed('quizResult', queryParameters: {
          'pseudo': data.pseudo,
          'level': data.level,
          'theme': data.theme,
        });
      }
    }
  }
}

@freezed
class QuizState with _$QuizState {
  const factory QuizState({
    required final String pseudo,
    required final String level,
    required final String theme,
    required final List<Quiz> quizzes,
    required final int index,
  }) = _QuizState;
  const QuizState._();

  int get nbCorrectAnswers {
    return quizzes.where((e) => e.isCorrect).length;
  }
}
