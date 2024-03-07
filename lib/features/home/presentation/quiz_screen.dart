import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/app_dependencies.dart';
import '../../../core/extensions/async_value_extensions.dart';
import '../../../core/presentation/widgets/buttons/button_filled_widget.dart';
import '../../../core/presentation/widgets/circular_progress_widget.dart';
import '../../../core/presentation/widgets/scaffold_widget.dart';
import 'controllers/quiz_controller.dart';
import 'widgets/answer_widget.dart';

class QuizScreen extends ConsumerWidget {
  const QuizScreen({required this.pseudo, required this.level, required this.theme});

  final String pseudo;
  final String level;
  final String theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appDependencies = ref.watch(appDependenciesProvider).requireValue;
    final provider = quizControllerProvider(pseudo, level, theme);
    final quizController = ref.watch(provider);

    ref.listen(provider, (_, state) => state.showSnackBarOnError(context));

    final pageController = PageController();

    return quizController.when(
      data: (data) {
        final quizzes = data.quizzes;
        return ScaffoldWidget(
          title: Text('${data.index}/${quizzes.length}'),
          displayAppBar: true,
          body: SafeArea(
            child: PageView.builder(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: quizzes.length,
              itemBuilder: (context, index) {
                final quiz = quizzes[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        quiz.question,
                        style: const TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 24.0),
                      Flexible(
                        child: GridView.builder(
                          itemCount: quiz.answers.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 8.0,
                            mainAxisSpacing: 8.0,
                          ),
                          itemBuilder: (context, index) {
                            final answer = quiz.answers[index];
                            return AnswerCard(
                              answer: answer,
                              isSelected: answer == quiz.selectedAnswer,
                              isCorrect: quiz.isCorrect,
                              onTap: () {
                                if (quiz.selectedAnswer == null) ref.read(provider.notifier).selectAnswer(quiz: quiz, answer: answer);
                              },
                            );
                          },
                        ),
                      ),
                      if (quiz.selectedAnswer != null) ...[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                quiz.isCorrect ? 'Correct!' : 'Incorrect!',
                                style: TextStyle(
                                  color: quiz.isCorrect ? Colors.green : Colors.red,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                quiz.explanation,
                                style: const TextStyle(fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                        ButtonFilledWidget(
                          onTap: () {
                            ref.read(provider.notifier).nextQuestion(
                                  index: index + 1,
                                  pageController: pageController,
                                );
                          },
                          text: index < quizzes.length - 1 ? 'Next Question' : 'Results',
                        ),
                      ]
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
      loading: () => ScaffoldWidget(
        title: Text(appDependencies.appName),
        displayAppBar: false,
        body: const CircularProgressWidget(),
      ),
      error: (error, stackTrace) => ScaffoldWidget(
        title: Text(appDependencies.appName),
        displayAppBar: false,
        body: ErrorWidget(error),
      ),
    );
  }
}

