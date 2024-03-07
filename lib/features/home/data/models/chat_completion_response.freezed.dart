// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_completion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatCompletionResponse _$ChatCompletionResponseFromJson(
    Map<String, dynamic> json) {
  return _ChatCompletionResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatCompletionResponse {
  String get id => throw _privateConstructorUsedError;
  String get object => throw _privateConstructorUsedError;
  int get created => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  List<ChoiceResponse> get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCompletionResponseCopyWith<ChatCompletionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCompletionResponseCopyWith<$Res> {
  factory $ChatCompletionResponseCopyWith(ChatCompletionResponse value,
          $Res Function(ChatCompletionResponse) then) =
      _$ChatCompletionResponseCopyWithImpl<$Res, ChatCompletionResponse>;
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      List<ChoiceResponse> choices});
}

/// @nodoc
class _$ChatCompletionResponseCopyWithImpl<$Res,
        $Val extends ChatCompletionResponse>
    implements $ChatCompletionResponseCopyWith<$Res> {
  _$ChatCompletionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatCompletionResponseImplCopyWith<$Res>
    implements $ChatCompletionResponseCopyWith<$Res> {
  factory _$$ChatCompletionResponseImplCopyWith(
          _$ChatCompletionResponseImpl value,
          $Res Function(_$ChatCompletionResponseImpl) then) =
      __$$ChatCompletionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String object,
      int created,
      String model,
      List<ChoiceResponse> choices});
}

/// @nodoc
class __$$ChatCompletionResponseImplCopyWithImpl<$Res>
    extends _$ChatCompletionResponseCopyWithImpl<$Res,
        _$ChatCompletionResponseImpl>
    implements _$$ChatCompletionResponseImplCopyWith<$Res> {
  __$$ChatCompletionResponseImplCopyWithImpl(
      _$ChatCompletionResponseImpl _value,
      $Res Function(_$ChatCompletionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? object = null,
    Object? created = null,
    Object? model = null,
    Object? choices = null,
  }) {
    return _then(_$ChatCompletionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      object: null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatCompletionResponseImpl implements _ChatCompletionResponse {
  const _$ChatCompletionResponseImpl(
      {required this.id,
      required this.object,
      required this.created,
      required this.model,
      required final List<ChoiceResponse> choices})
      : _choices = choices;

  factory _$ChatCompletionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatCompletionResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String object;
  @override
  final int created;
  @override
  final String model;
  final List<ChoiceResponse> _choices;
  @override
  List<ChoiceResponse> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  String toString() {
    return 'ChatCompletionResponse(id: $id, object: $object, created: $created, model: $model, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatCompletionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatCompletionResponseImplCopyWith<_$ChatCompletionResponseImpl>
      get copyWith => __$$ChatCompletionResponseImplCopyWithImpl<
          _$ChatCompletionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatCompletionResponseImplToJson(
      this,
    );
  }
}

abstract class _ChatCompletionResponse implements ChatCompletionResponse {
  const factory _ChatCompletionResponse(
          {required final String id,
          required final String object,
          required final int created,
          required final String model,
          required final List<ChoiceResponse> choices}) =
      _$ChatCompletionResponseImpl;

  factory _ChatCompletionResponse.fromJson(Map<String, dynamic> json) =
      _$ChatCompletionResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get object;
  @override
  int get created;
  @override
  String get model;
  @override
  List<ChoiceResponse> get choices;
  @override
  @JsonKey(ignore: true)
  _$$ChatCompletionResponseImplCopyWith<_$ChatCompletionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChoiceResponse _$ChoiceResponseFromJson(Map<String, dynamic> json) {
  return _ChoiceResponse.fromJson(json);
}

/// @nodoc
mixin _$ChoiceResponse {
  int get index => throw _privateConstructorUsedError;
  MessageResponse get message => throw _privateConstructorUsedError;
  String get finish_reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceResponseCopyWith<ChoiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceResponseCopyWith<$Res> {
  factory $ChoiceResponseCopyWith(
          ChoiceResponse value, $Res Function(ChoiceResponse) then) =
      _$ChoiceResponseCopyWithImpl<$Res, ChoiceResponse>;
  @useResult
  $Res call({int index, MessageResponse message, String finish_reason});

  $MessageResponseCopyWith<$Res> get message;
}

/// @nodoc
class _$ChoiceResponseCopyWithImpl<$Res, $Val extends ChoiceResponse>
    implements $ChoiceResponseCopyWith<$Res> {
  _$ChoiceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finish_reason = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageResponse,
      finish_reason: null == finish_reason
          ? _value.finish_reason
          : finish_reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageResponseCopyWith<$Res> get message {
    return $MessageResponseCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceResponseImplCopyWith<$Res>
    implements $ChoiceResponseCopyWith<$Res> {
  factory _$$ChoiceResponseImplCopyWith(_$ChoiceResponseImpl value,
          $Res Function(_$ChoiceResponseImpl) then) =
      __$$ChoiceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, MessageResponse message, String finish_reason});

  @override
  $MessageResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$$ChoiceResponseImplCopyWithImpl<$Res>
    extends _$ChoiceResponseCopyWithImpl<$Res, _$ChoiceResponseImpl>
    implements _$$ChoiceResponseImplCopyWith<$Res> {
  __$$ChoiceResponseImplCopyWithImpl(
      _$ChoiceResponseImpl _value, $Res Function(_$ChoiceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? message = null,
    Object? finish_reason = null,
  }) {
    return _then(_$ChoiceResponseImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageResponse,
      finish_reason: null == finish_reason
          ? _value.finish_reason
          : finish_reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceResponseImpl implements _ChoiceResponse {
  const _$ChoiceResponseImpl(
      {required this.index,
      required this.message,
      required this.finish_reason});

  factory _$ChoiceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceResponseImplFromJson(json);

  @override
  final int index;
  @override
  final MessageResponse message;
  @override
  final String finish_reason;

  @override
  String toString() {
    return 'ChoiceResponse(index: $index, message: $message, finish_reason: $finish_reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceResponseImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.finish_reason, finish_reason) ||
                other.finish_reason == finish_reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, message, finish_reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceResponseImplCopyWith<_$ChoiceResponseImpl> get copyWith =>
      __$$ChoiceResponseImplCopyWithImpl<_$ChoiceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceResponseImplToJson(
      this,
    );
  }
}

abstract class _ChoiceResponse implements ChoiceResponse {
  const factory _ChoiceResponse(
      {required final int index,
      required final MessageResponse message,
      required final String finish_reason}) = _$ChoiceResponseImpl;

  factory _ChoiceResponse.fromJson(Map<String, dynamic> json) =
      _$ChoiceResponseImpl.fromJson;

  @override
  int get index;
  @override
  MessageResponse get message;
  @override
  String get finish_reason;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceResponseImplCopyWith<_$ChoiceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) {
  return _MessageResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageResponse {
  String get role => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageResponseCopyWith<MessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseCopyWith<$Res> {
  factory $MessageResponseCopyWith(
          MessageResponse value, $Res Function(MessageResponse) then) =
      _$MessageResponseCopyWithImpl<$Res, MessageResponse>;
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class _$MessageResponseCopyWithImpl<$Res, $Val extends MessageResponse>
    implements $MessageResponseCopyWith<$Res> {
  _$MessageResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$MessageResponseImplCopyWith<$Res>
    implements $MessageResponseCopyWith<$Res> {
  factory _$$MessageResponseImplCopyWith(_$MessageResponseImpl value,
          $Res Function(_$MessageResponseImpl) then) =
      __$$MessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, String content});
}

/// @nodoc
class __$$MessageResponseImplCopyWithImpl<$Res>
    extends _$MessageResponseCopyWithImpl<$Res, _$MessageResponseImpl>
    implements _$$MessageResponseImplCopyWith<$Res> {
  __$$MessageResponseImplCopyWithImpl(
      _$MessageResponseImpl _value, $Res Function(_$MessageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? content = null,
  }) {
    return _then(_$MessageResponseImpl(
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
class _$MessageResponseImpl implements _MessageResponse {
  const _$MessageResponseImpl({required this.role, required this.content});

  factory _$MessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResponseImplFromJson(json);

  @override
  final String role;
  @override
  final String content;

  @override
  String toString() {
    return 'MessageResponse(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResponseImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResponseImplCopyWith<_$MessageResponseImpl> get copyWith =>
      __$$MessageResponseImplCopyWithImpl<_$MessageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageResponse implements MessageResponse {
  const factory _MessageResponse(
      {required final String role,
      required final String content}) = _$MessageResponseImpl;

  factory _MessageResponse.fromJson(Map<String, dynamic> json) =
      _$MessageResponseImpl.fromJson;

  @override
  String get role;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$MessageResponseImplCopyWith<_$MessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
