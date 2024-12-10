import 'package:festiva_flutter/core/network/network.dart';
import 'package:festiva_flutter/data/mappers/mapper.dart';
import 'package:festiva_flutter/domain/repository/repository.dart';
import 'package:festiva_flutter/data/repository_impl/impl.dart';
import 'package:festiva_flutter/domain/usecase/use_case.dart';
import 'package:festiva_flutter/presentation/providers/provider.dart';

import 'package:festiva_flutter/presentation/utils/constants.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  const baseUrl = Constants.apiUrl;

  // Services
  getIt.registerLazySingleton<ApiArtista>(() => ApiArtista(baseUrl: baseUrl));
  getIt.registerLazySingleton<ApiDiscoteca>(
      () => ApiDiscoteca(baseUrl: baseUrl));

  // Mappers
  getIt.registerLazySingleton<ArtistaMapper>(() => ArtistaMapper());
  getIt.registerLazySingleton<DiscotecaMapper>(() => DiscotecaMapper());

  // Repository
  getIt.registerLazySingleton<ArtistaRepository>(
      () => ArtistaRepositoryImpl(api: getIt(), artistaMapper: getIt()));
  getIt.registerLazySingleton<DiscotecaRepository>(
      () => DiscotecaRepositoryImpl(api: getIt(), discotecaMapper: getIt()));

  // Providers
  getIt.registerFactory<ArtistaProvider>(
      () => ArtistaProvider(getAllArtistasUseCase: getIt()));
  getIt.registerFactory<DiscotecaProvider>(
      () => DiscotecaProvider(repo: getIt()));

  // Use Case
  getIt.registerLazySingleton<GetAllArtistasUseCase>(
    () => GetAllArtistasUseCase(getIt<ArtistaRepository>()),
  );
}
