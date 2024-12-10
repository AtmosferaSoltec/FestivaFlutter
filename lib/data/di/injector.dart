import 'package:festiva_flutter/data/service/categoria_service.dart';
import 'package:festiva_flutter/data/service/service.dart';
import 'package:festiva_flutter/domain/repository/repository.dart';
import 'package:festiva_flutter/data/repository_impl/impl.dart';
import 'package:festiva_flutter/domain/usecase/use_case.dart';
import 'package:festiva_flutter/presentation/providers/provider.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  // Http Client
  // getIt.registerLazySingleton<AuthenticatedHttpClient>(() => AuthenticatedHttpClient({}));

  // Services
  getIt.registerLazySingleton<ArtistaService>(() => ArtistaService());
  getIt.registerLazySingleton<DiscotecaService>(() => DiscotecaService());
  getIt.registerLazySingleton<CategoriaService>(() => CategoriaService());

  // Repository
  getIt.registerLazySingleton<ArtistaRepository>(
      () => ArtistaRepositoryImpl(api: getIt()));
  getIt.registerLazySingleton<DiscotecaRepository>(
      () => DiscotecaRepositoryImpl(api: getIt()));
  getIt.registerLazySingleton<CategoriaRepository>(
      () => CategoriaRepositoryImpl(api: getIt()));

  // Providers
  getIt.registerFactory<ArtistaProvider>(
      () => ArtistaProvider(getAllArtistasUseCase: getIt()));
  getIt.registerFactory<DiscotecaProvider>(
      () => DiscotecaProvider(repo: getIt()));
  getIt.registerFactory<CategoriaProvider>(
      () => CategoriaProvider(repo: getIt()));

  // Use Case
  getIt.registerLazySingleton<GetAllArtistasUseCase>(
    () => GetAllArtistasUseCase(getIt<ArtistaRepository>()),
  );
}
