import 'package:festiva_flutter/domain/model/artista.dart';

abstract class ArtistaRepository {
  Future<List<Artista>> getAll();
}
