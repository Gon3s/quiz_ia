import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_completion_request.freezed.dart';
part 'chat_completion_request.g.dart';

@freezed
class ChatCompletionRequest with _$ChatCompletionRequest {
  const factory ChatCompletionRequest({
    required String model,
    @Default(ResponseRequest()) ResponseRequest response_format,
    required List<MessageRequest> messages,
  }) = _ChatCompletionRequest;

  factory ChatCompletionRequest.fromJson(Map<String, dynamic> json) => _$ChatCompletionRequestFromJson(json);
}

@freezed
class MessageRequest with _$MessageRequest {
  const factory MessageRequest({
    required String role,
    required String content,
  }) = _MessageRequest;

  factory MessageRequest.fromJson(Map<String, dynamic> json) => _$MessageRequestFromJson(json);
}

@freezed
class ResponseRequest with _$ResponseRequest {
  const factory ResponseRequest({
    @Default('json_object') String type,
  }) = _ResponseRequest;

  factory ResponseRequest.fromJson(Map<String, dynamic> json) => _$ResponseRequestFromJson(json);
}
