import 'package:festiva_flutter/domain/model/artista.dart';
import 'package:festiva_flutter/domain/repository/repository.dart';

class GetAllArtistasUseCase {
  final ArtistaRepository repository;

  GetAllArtistasUseCase(this.repository);

  Future<List<Artista>> call() async {
    return await repository.getAll();
  }
}
