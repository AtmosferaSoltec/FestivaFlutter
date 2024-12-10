import 'package:festiva_flutter/domain/model/categoria.dart';

abstract class CategoriaRepository {
  Future<List<Categoria>> findAll();
  Future<Categoria> findById(int id);
  Future<void> save(Categoria categoria);
  Future<void> delete(int id);
}
