// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatCompletionRequestImpl _$$ChatCompletionRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionRequestImpl(
      model: json['model'] as String,
      response_format: json['response_format'] == null
          ? const ResponseRequest()
          : ResponseRequest.fromJson(
              json['response_format'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatCompletionRequestImplToJson(
        _$ChatCompletionRequestImpl instance) =>
    <String, dynamic>{
      'model': instance.model,
      'response_format': instance.response_format,
      'messages': instance.messages,
    };

_$MessageRequestImpl _$$MessageRequestImplFromJson(Map<String, dynamic> json) =>
    _$MessageRequestImpl(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$MessageRequestImplToJson(
        _$MessageRequestImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };

_$ResponseRequestImpl _$$ResponseRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseRequestImpl(
      type: json['type'] as String? ?? 'json_object',
    );

Map<String, dynamic> _$$ResponseRequestImplToJson(
        _$ResponseRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
    };
