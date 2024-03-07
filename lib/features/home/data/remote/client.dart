import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/chat_completion_request.dart';
import '../models/chat_completion_response.dart';

part 'client.g.dart';

@riverpod
OpenAIApi openAIApi(OpenAIApiRef ref) {
  final dio = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );
  return OpenAIApi(dio);
}

@RestApi(baseUrl: 'https://api.openai.com/v1/')
abstract class OpenAIApi {
  factory OpenAIApi(Dio dio, {String baseUrl}) = _OpenAIApi;

  @POST('chat/completions')
  Future<ChatCompletionResponse> getChatCompletions(
    @Header('Authorization') String apiKey,
    @Body() ChatCompletionRequest request,
  );
}
