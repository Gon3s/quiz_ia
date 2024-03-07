import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_dependencies.dart';
import '../../../core/extensions/async_value_extensions.dart';
import '../../../core/presentation/widgets/buttons/button_filled_widget.dart';
import '../../../core/presentation/widgets/circular_progress_widget.dart';
import '../../../core/presentation/widgets/scaffold_widget.dart';
import 'controllers/quiz_controller.dart';

class QuizResultScreen extends ConsumerWidget {
  const QuizResultScreen({required this.pseudo, required this.level, required this.theme});

  final String pseudo;
  final String level;
  final String theme;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appDependencies = ref.watch(appDependenciesProvider).requireValue;
    final provider = quizControllerProvider(pseudo, level, theme);
    final quizController = ref.watch(provider);

    ref.listen(provider, (_, state) => state.showSnackBarOnError(context));

    return ScaffoldWidget(
      title: Text(appDependencies.appName),
      displayAppBar: true,
      body: quizController.when(
        data: (data) {
          final quizzes = data.quizzes;

          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Column(
              children: [
                Text(
                  'Félicitation $pseudo !',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Vous avez ${data.nbCorrectAnswers} sur ${quizzes.length}',
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...quizzes.map(
                          (quiz) {
                            return Card(
                              color: quiz.isCorrect ? Colors.green : Colors.red,
                              child: SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text('${quiz.question}: ${quiz.selectedAnswer}'),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                ButtonFilledWidget(
                  onTap: () => GoRouter.of(context).goNamed('home'),
                  text: 'Nouveau Quiz',
                ),
              ],
            ),
          );
        },
        loading: () => const CircularProgressWidget(),
        error: (error, stackTrace) => ErrorWidget(error),
      ),
    );
  }
}
