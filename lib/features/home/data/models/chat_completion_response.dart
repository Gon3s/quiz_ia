import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_response.freezed.dart';
part 'chat_completion_response.g.dart';

@freezed
class ChatCompletionResponse with _$ChatCompletionResponse {
  const factory ChatCompletionResponse({
    required String id,
    required String object,
    required int created,
    required String model,
    required List<ChoiceResponse> choices,
  }) = _ChatCompletionResponse;

  factory ChatCompletionResponse.fromJson(Map<String, dynamic> json) => _$ChatCompletionResponseFromJson(json);
}

@freezed
class ChoiceResponse with _$ChoiceResponse {
  const factory ChoiceResponse({
    required int index,
    required MessageResponse message,
    required String finish_reason,
  }) = _ChoiceResponse;

  factory ChoiceResponse.fromJson(Map<String, dynamic> json) => _$ChoiceResponseFromJson(json);
}

@freezed
class MessageResponse with _$MessageResponse {
  const factory MessageResponse({
    required String role,
    required String content,
  }) = _MessageResponse;

  factory MessageResponse.fromJson(Map<String, dynamic> json) => _$MessageResponseFromJson(json);
}
