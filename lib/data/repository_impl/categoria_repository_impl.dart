import 'package:festiva_flutter/data/dto/categoria_dto.dart';
import 'package:festiva_flutter/data/mappers/mapper.dart';
import 'package:festiva_flutter/data/service/categoria_service.dart';
import 'package:festiva_flutter/domain/model/categoria.dart';
import 'package:festiva_flutter/domain/repository/categoria_repository.dart';

class CategoriaRepositoryImpl implements CategoriaRepository {
  final CategoriaService api;

  CategoriaRepositoryImpl({required this.api});

  @override
  Future<void> delete(int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<List<Categoria>> findAll() async {
    final call = await api.getAll();
    final listDto = call.map((json) => CategoriaDto.fromJson(json)).toList();
    return listDto.map((dto) => CategoriaMapper().toDomain(dto)).toList();
  }

  @override
  Future<Categoria> findById(int id) {
    // TODO: implement findById
    throw UnimplementedError();
  }

  @override
  Future<void> save(Categoria categoria) {
    // TODO: implement save
    throw UnimplementedError();
  }
}
