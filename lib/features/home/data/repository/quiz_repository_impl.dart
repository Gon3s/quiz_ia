import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/utils/colored_debug_printer.dart';
import '../../../../env.dart';
import '../../domain/entities/quiz.dart';
import '../../domain/repository/quiz_repository.dart';
import '../models/chat_completion_request.dart';
import '../models/quiz.dart';
import '../remote/client.dart';

part 'quiz_repository_impl.g.dart';

@riverpod
QuizRepository quizRepository(QuizRepositoryRef ref) {
  return QuizRepositoryImpl(client: ref.read(openAIApiProvider));
}

class QuizRepositoryImpl implements QuizRepository {
  QuizRepositoryImpl({required this.client});

  final OpenAIApi client;

  @override
  Future<Either<Failure, List<Quiz>>> getQuizzes({required String level, required String theme}) async {
    try {
      final responseJson = await _getChatCompletionRequest(level: level, theme: theme);

      final questions = QuizModel.fromJson(responseJson)
          .questions
          .map(
            (e) => e.toEntity(),
          )
          .toList();

      return Right(questions);
    } catch (e) {
      return const Left(ServerFailure('Error getting quizzes'));
    }
  }

  dynamic _getChatCompletionRequest({required String level, required String theme}) async {
    final response = await client.getChatCompletions(
      'Bearer ${Env.apiKey}',
      ChatCompletionRequest(
        model: 'gpt-4-0125-preview',
        messages: [
          const MessageRequest(
            role: 'system',
            content: '''
**Titre :** Création d'un quiz personnalisé

**Objectif :** Créer une application de quiz avec des paramètres personnalisables tels que le niveau de difficulté et le thème.

**Niveaux de difficulté :**

1. Facile :
   - Description : Tout le monde doit pouvoir répondre s'il connait le sujet.
   - Exemple de question : "Quelle est la capitale de la France ?"
2. Intermédiaire :
   - Description : La majorité des personnes doivent pouvoir répondre s'ils connaissent le sujet.
   - Exemple de question : "Qui a écrit le roman 'Les Misérables' ?"
3. Expert :
   - Description : Les questions les plus difficiles que tu pourrais donner.
   - Exemple de question : "Qui a remporté le prix Nobel de littérature en 1957 ?"

**Caractéristiques du quiz :**

- Nombre de questions : 10
- Langue : français
- Contraintes de longueur :
  - Question : maximum 200 caractères
  - Réponse : maximum 100 caractères
  - Explication : maximum 300 caractères
- Types de questions interdites :
  - Questions avec plusieurs réponses possibles.
  - Questions avec des réponses trop évidentes
  - Questions avec la réponse dans la questions :  Exemple : "Quel est le nom de la petite fille dans 'Lilo & Stitch' ?",
  - Questions avec une réponse qui aurait pu évoluer depuis la rédaction de la question.

**Format des réponses :**

- Nombre de propositions de réponses : 4
- Une seule réponse possible

**Format de sortie :**

Donne le résultat sous forme de JSON avec les clés suivantes :

- level (string) : "Facile" | "Intermédiaire" | "Difficile"
- subject (string) : le thème choisi pour le quiz
- questions (array, max length: 10) :
  - question (string) : la question posée
  - answers (array, length: 4) : les réponses proposées
  - correct_answer (int) : index de la bonne réponses dans la liste des answers
  - explanation (string) : l'explanation de la bonne réponse

**Exemple de JSON :**

```json
{
  "level": "Facile",
  "subject": "Géographie",
  "questions": [
    {
      "question": "Quelle est la capitale de la France ?",
      "answers": ["Marseille", "Lyon", "Paris", "Nice"],
      "correct_answer": 2,
      "explanation": "Paris est la capitale de la France depuis le Xe siècle.",
    },
    ...
  ]
}
```
''',
          ),
          MessageRequest(
            role: 'user',
            content: '''
Niveau : $level
Thème : $theme
''',
          ),
        ],
      ),
    );

    Print.green('quizz_repository', response.choices.first.message.content);

    final responseJson = jsonDecode(response.choices.first.message.content) as Map<String, dynamic>;

    if (responseJson.containsKey('error')) {
      return Left(ServerFailure(responseJson['error'].toString()));
    }

    return responseJson;
  }
}
