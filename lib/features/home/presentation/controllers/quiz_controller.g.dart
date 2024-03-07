// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$quizControllerHash() => r'cac7009b2b73a15fefae10dba02e23b39a7f8b17';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$QuizController
    extends BuildlessAutoDisposeAsyncNotifier<QuizState> {
  late final String pseudo;
  late final String level;
  late final String theme;

  FutureOr<QuizState> build(
    String pseudo,
    String level,
    String theme,
  );
}

/// See also [QuizController].
@ProviderFor(QuizController)
const quizControllerProvider = QuizControllerFamily();

/// See also [QuizController].
class QuizControllerFamily extends Family<AsyncValue<QuizState>> {
  /// See also [QuizController].
  const QuizControllerFamily();

  /// See also [QuizController].
  QuizControllerProvider call(
    String pseudo,
    String level,
    String theme,
  ) {
    return QuizControllerProvider(
      pseudo,
      level,
      theme,
    );
  }

  @override
  QuizControllerProvider getProviderOverride(
    covariant QuizControllerProvider provider,
  ) {
    return call(
      provider.pseudo,
      provider.level,
      provider.theme,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'quizControllerProvider';
}

/// See also [QuizController].
class QuizControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<QuizController, QuizState> {
  /// See also [QuizController].
  QuizControllerProvider(
    String pseudo,
    String level,
    String theme,
  ) : this._internal(
          () => QuizController()
            ..pseudo = pseudo
            ..level = level
            ..theme = theme,
          from: quizControllerProvider,
          name: r'quizControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$quizControllerHash,
          dependencies: QuizControllerFamily._dependencies,
          allTransitiveDependencies:
              QuizControllerFamily._allTransitiveDependencies,
          pseudo: pseudo,
          level: level,
          theme: theme,
        );

  QuizControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.pseudo,
    required this.level,
    required this.theme,
  }) : super.internal();

  final String pseudo;
  final String level;
  final String theme;

  @override
  FutureOr<QuizState> runNotifierBuild(
    covariant QuizController notifier,
  ) {
    return notifier.build(
      pseudo,
      level,
      theme,
    );
  }

  @override
  Override overrideWith(QuizController Function() create) {
    return ProviderOverride(
      origin: this,
      override: QuizControllerProvider._internal(
        () => create()
          ..pseudo = pseudo
          ..level = level
          ..theme = theme,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        pseudo: pseudo,
        level: level,
        theme: theme,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<QuizController, QuizState>
      createElement() {
    return _QuizControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is QuizControllerProvider &&
        other.pseudo == pseudo &&
        other.level == level &&
        other.theme == theme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, pseudo.hashCode);
    hash = _SystemHash.combine(hash, level.hashCode);
    hash = _SystemHash.combine(hash, theme.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin QuizControllerRef on AutoDisposeAsyncNotifierProviderRef<QuizState> {
  /// The parameter `pseudo` of this provider.
  String get pseudo;

  /// The parameter `level` of this provider.
  String get level;

  /// The parameter `theme` of this provider.
  String get theme;
}

class _QuizControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<QuizController, QuizState>
    with QuizControllerRef {
  _QuizControllerProviderElement(super.provider);

  @override
  String get pseudo => (origin as QuizControllerProvider).pseudo;
  @override
  String get level => (origin as QuizControllerProvider).level;
  @override
  String get theme => (origin as QuizControllerProvider).theme;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
