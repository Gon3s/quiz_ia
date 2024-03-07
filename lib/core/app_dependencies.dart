import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dependencies.freezed.dart';
part 'app_dependencies.g.dart';

@Riverpod(keepAlive: true)
Future<AppDependencies> appDependencies(
  AppDependenciesRef ref,
) async {
  await Future<void>.delayed(const Duration(seconds: 2));

  return const AppDependencies(
    appName: 'Quizz IA',
  );
}

@freezed
class AppDependencies with _$AppDependencies {
  const factory AppDependencies({
    required String appName,
  }) = _AppDependencies;
}
