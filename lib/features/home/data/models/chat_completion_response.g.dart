// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_completion_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatCompletionResponseImpl _$$ChatCompletionResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatCompletionResponseImpl(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChatCompletionResponseImplToJson(
        _$ChatCompletionResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
    };

_$ChoiceResponseImpl _$$ChoiceResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChoiceResponseImpl(
      index: (json['index'] as num).toInt(),
      message:
          MessageResponse.fromJson(json['message'] as Map<String, dynamic>),
      finish_reason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$ChoiceResponseImplToJson(
        _$ChoiceResponseImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'message': instance.message,
      'finish_reason': instance.finish_reason,
    };

_$MessageResponseImpl _$$MessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageResponseImpl(
      role: json['role'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$MessageResponseImplToJson(
        _$MessageResponseImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
