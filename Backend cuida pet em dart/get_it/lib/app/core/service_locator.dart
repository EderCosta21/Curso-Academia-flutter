import 'package:get_it/get_it.dart';
import 'package:get_it_injectable_example/app/models/random_factory_model.dart';
import 'package:get_it_injectable_example/app/models/random_lazy_singleton_model.dart';
import 'package:get_it_injectable_example/app/models/random_singleton_model.dart';

void configureDependencies() {
  final getIt = GetIt.I;

  // Inicializa toda vez que precisa
  getIt.registerFactory(() => RandomFactoryModel());
  // Inicializa uma unica vez, quando é carregado pela primeira vez
  getIt.registerSingleton(RandomSingletonModel());
  // Inicializa uma unica vez, quando é é chamado pela primeira vez
  getIt.registerLazySingleton(() => RandomLazySingletonModel());
}
