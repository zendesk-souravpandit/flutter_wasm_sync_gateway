import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'data/counter_repository.dart';

abstract class AppInitializer {
  static Future<void>? _initialized;
  Future<void> ensureInitialized() => _initialized ??= initialize();
  Future<void> initialize();
  RootDependencies get rootDependencies;
}

class RootDependencies {
  RootDependencies({required this.counterRepository});
  final CounterRepository counterRepository;
}

class ProvideRootDependencies extends StatelessWidget {
  const ProvideRootDependencies(
      {Key? key, required this.dependencies, required this.child})
      : super(key: key);
  final RootDependencies dependencies;
  final Widget child;
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [Provider.value(value: dependencies.counterRepository)],
        child: child,
      );
}

class DefaultAppInitializer extends AppInitializer {
  @override
  Future<void> initialize() async {}
  @override
  RootDependencies get rootDependencies => RootDependencies(
        counterRepository: CounterRepository(database: null),
      );
}
