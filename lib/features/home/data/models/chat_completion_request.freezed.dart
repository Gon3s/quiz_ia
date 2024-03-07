// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatCompletionRequest _$ChatCompletionRequestFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionRequest.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionRequest {
  String get model => throw _privateConstructorUsedError;
  ResponseRequest get response_format => throw _privateConstructorUsedError;
  List<MessageRequest> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionRequestCopyWith<ChatCompletionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionRequestCopyWith<$Res> {
  factory $ChatCompletionRequestCopyWith(ChatCompletionRequest value,
          $Res Function(ChatCompletionRequest) then) =
      _$ChatCompletionRequestCopyWithImpl<$Res, ChatCompletionRequest>;
  @useResult
  $Res call(
      {String model,
      ResponseRequest response_format,
      List<MessageRequest> messages});

  $ResponseRequestCopyWith<$Res> get response_format;
}

/// @nodoc
class _$ChatCompletionRequestCopyWithImpl<$Res,
        $Val extends ChatCompletionRequest>
    implements $ChatCompletionRequestCopyWith<$Res> {
  _$ChatCompletionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? response_format = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      response_format: null == response_format
          ? _value.response_format
          : response_format // ignore: cast_nullable_to_non_nullable
              as ResponseRequest,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageRequest>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseRequestCopyWith<$Res> get response_format {
    return $ResponseRequestCopyWith<$Res>(_value.response_format, (value) {
      return _then(_value.copyWith(response_format: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatCompletionRequestImplCopyWith<$Res>
    implements $ChatCompletionRequestCopyWith<$Res> {
  factory _$$ChatCompletionRequestImplCopyWith(
          _$ChatCompletionRequestImpl value,
          $Res Function(_$ChatCompletionRequestImpl) then) =
      __$$ChatCompletionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String model,
      ResponseRequest response_format,
      List<MessageRequest> messages});

  @override
  $ResponseRequestCopyWith<$Res> get response_format;
}

/// @nodoc
class __$$ChatCompletionRequestImplCopyWithImpl<$Res>
    extends _$ChatCompletionRequestCopyWithImpl<$Res,
        _$ChatCompletionRequestImpl>
    implements _$$ChatCompletionRequestImplCopyWith<$Res> {
  __$$ChatCompletionRequestImplCopyWithImpl(_$ChatCompletionRequestImpl _value,
      $Res Function(_$ChatCompletionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
    Object? response_format = null,
    Object? messages = null,
  }) {
    return _then(_$ChatCompletionRequestImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      response_format: null == response_format
          ? _value.response_format
          : response_format // ignore: cast_nullable_to_non_nullable
              as ResponseRequest,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageRequest>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionRequestImpl implements _ChatCompletionRequest {
  const _$ChatCompletionRequestImpl(
      {required this.model,
      this.response_format = const ResponseRequest(),
      required final List<MessageRequest> messages})
      : _messages = messages;

  factory _$ChatCompletionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionRequestImplFromJson(json);

  @override
  final String model;
  @override
  @JsonKey()
  final ResponseRequest response_format;
  final List<MessageRequest> _messages;
  @override
  List<MessageRequest> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatCompletionRequest(model: $model, response_format: $response_format, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionRequestImpl &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.response_format, response_format) ||
                other.response_format == response_format) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, model, response_format,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionRequestImplCopyWith<_$ChatCompletionRequestImpl>
      get copyWith => __$$ChatCompletionRequestImplCopyWithImpl<
          _$ChatCompletionRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionRequestImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionRequest implements ChatCompletionRequest {
  const factory _ChatCompletionRequest(
          {required final String model,
          final ResponseRequest response_format,
          required final List<MessageRequest> messages}) =
      _$ChatCompletionRequestImpl;

  factory _ChatCompletionRequest.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionRequestImpl.fromJson;

  @override
  String get model;
  @override
  ResponseRequest get response_format;
  @override
  List<MessageRequest> get messages;
  @override
  @JsonKey(ignore: true)
  _$$ChatCompletionRequestImplCopyWith<_$ChatCompletionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) {
  return _MessageRequest.fromJson(json);
}

/// @nodoc
mixin _$MessageRequest {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageRequestCopyWith<MessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageRequestCopyWith<$Res> {
  factory $MessageRequestCopyWith(
          MessageRequest value, $Res Function(MessageRequest) then) =
      _$MessageRequestCopyWithImpl<$Res, MessageRequest>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$MessageRequestCopyWithImpl<$Res, $Val extends MessageRequest>
    implements $MessageRequestCopyWith<$Res> {
  _$MessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageRequestImplCopyWith<$Res>
    implements $MessageRequestCopyWith<$Res> {
  factory _$$MessageRequestImplCopyWith(_$MessageRequestImpl value,
          $Res Function(_$MessageRequestImpl) then) =
      __$$MessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$MessageRequestImplCopyWithImpl<$Res>
    extends _$MessageRequestCopyWithImpl<$Res, _$MessageRequestImpl>
    implements _$$MessageRequestImplCopyWith<$Res> {
  __$$MessageRequestImplCopyWithImpl(
      _$MessageRequestImpl _value, $Res Function(_$MessageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$MessageRequestImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageRequestImpl implements _MessageRequest {
  const _$MessageRequestImpl({required this.role, required this.content});

  factory _$MessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageRequestImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'MessageRequest(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageRequestImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageRequestImplCopyWith<_$MessageRequestImpl> get copyWith =>
      __$$MessageRequestImplCopyWithImpl<_$MessageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageRequestImplToJson(
      this,
    );
  }
}

abstract class _MessageRequest implements MessageRequest {
  const factory _MessageRequest(
      {required final String role,
      required final String content}) = _$MessageRequestImpl;

  factory _MessageRequest.fromJson(Map<String, dynamic> json) =
      _$MessageRequestImpl.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageRequestImplCopyWith<_$MessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseRequest _$ResponseRequestFromJson(Map<String, dynamic> json) {
  return _ResponseRequest.fromJson(json);
}

/// @nodoc
mixin _$ResponseRequest {
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseRequestCopyWith<ResponseRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseRequestCopyWith<$Res> {
  factory $ResponseRequestCopyWith(
          ResponseRequest value, $Res Function(ResponseRequest) then) =
      _$ResponseRequestCopyWithImpl<$Res, ResponseRequest>;
  @useResult
  $Res call({String type});
}

/// @nodoc
class _$ResponseRequestCopyWithImpl<$Res, $Val extends ResponseRequest>
    implements $ResponseRequestCopyWith<$Res> {
  _$ResponseRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseRequestImplCopyWith<$Res>
    implements $ResponseRequestCopyWith<$Res> {
  factory _$$ResponseRequestImplCopyWith(_$ResponseRequestImpl value,
          $Res Function(_$ResponseRequestImpl) then) =
      __$$ResponseRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type});
}

/// @nodoc
class __$$ResponseRequestImplCopyWithImpl<$Res>
    extends _$ResponseRequestCopyWithImpl<$Res, _$ResponseRequestImpl>
    implements _$$ResponseRequestImplCopyWith<$Res> {
  __$$ResponseRequestImplCopyWithImpl(
      _$ResponseRequestImpl _value, $Res Function(_$ResponseRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ResponseRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseRequestImpl implements _ResponseRequest {
  const _$ResponseRequestImpl({this.type = 'json_object'});

  factory _$ResponseRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseRequestImplFromJson(json);

  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'ResponseRequest(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseRequestImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseRequestImplCopyWith<_$ResponseRequestImpl> get copyWith =>
      __$$ResponseRequestImplCopyWithImpl<_$ResponseRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseRequestImplToJson(
      this,
    );
  }
}

abstract class _ResponseRequest implements ResponseRequest {
  const factory _ResponseRequest({final String type}) = _$ResponseRequestImpl;

  factory _ResponseRequest.fromJson(Map<String, dynamic> json) =
      _$ResponseRequestImpl.fromJson;

  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$ResponseRequestImplCopyWith<_$ResponseRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
