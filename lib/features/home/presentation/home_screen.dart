import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/app_dependencies.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/presentation/widgets/buttons/button_filled_widget.dart';
import '../../../core/presentation/widgets/gradient_mask.dart';
import '../../../core/presentation/widgets/scaffold_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appDependencies = ref.watch(appDependenciesProvider).requireValue;

    final _formKey = GlobalKey<FormState>();
    final pseudoTextController = TextEditingController();
    String level = 'Facile';
    final themeTextController = TextEditingController();

    return ScaffoldWidget(
      title: Text(appDependencies.appName),
      displayAppBar: false,
      body: SafeArea(
        child: Stack(
          children: [
            const Positioned(
              top: 48,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'QuizApp!',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: AppColors.veryDarkBlue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 24.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Crée ton quiz personnalisé !',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 36.0,
                        ),
                        const Row(
                          children: [
                            GradientMask(
                              gradientColors: [
                                AppColors.purple,
                                AppColors.pink,
                              ],
                              child: Icon(
                                Icons.person,
                                color: AppColors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'Pseudo',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        TextFormFieldWidget(
                          controller: pseudoTextController,
                          labelText: 'Votre pseudo',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Le nom est obligatoire';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          children: [
                            GradientMask(
                              gradientColors: [
                                AppColors.purple,
                                AppColors.pink,
                              ],
                              child: Icon(
                                Icons.star,
                                color: AppColors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox( 
                              width: 4.0,
                            ),
                            Text(
                              'Difficulté',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        FormField(
                          onSaved: (newValue) => level = newValue.toString(),
                          initialValue: level,
                          builder: (FormFieldState<dynamic> state) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: DropdownButtonFormField<String>(
                                items: const <String>['Facile', 'Intermédiaire', 'Difficile'].map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  state.didChange(value);
                                },
                                value: state.value,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Row(
                          children: [
                            GradientMask(
                              gradientColors: [
                                AppColors.purple,
                                AppColors.pink,
                              ],
                              child: Icon(
                                Icons.palette,
                                color: AppColors.white,
                                size: 16,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              'Thème',
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        TextFormFieldWidget(
                          controller: themeTextController,
                          labelText: 'Thème du quiz',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Le thème est obligatoire';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        ButtonFilledWidget(
                          text: 'Commencer le quiz',
                          onTap: () async {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }

                            GoRouter.of(context).goNamed(
                              'quiz',
                              queryParameters: {
                                'pseudo': pseudoTextController.text,
                                'level': level,
                                'theme': themeTextController.text,
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.validator,
  });

  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
        ),
        validator: validator,
        textCapitalization: TextCapitalization.sentences,
      ),
    );
  }
}
