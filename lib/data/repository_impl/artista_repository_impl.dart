import 'package:festiva_flutter/data/dto/artista_dto.dart';
import 'package:festiva_flutter/data/mappers/artista_mapper.dart';
import 'package:festiva_flutter/data/service/service.dart';
import 'package:festiva_flutter/domain/model/artista.dart';
import 'package:festiva_flutter/domain/repository/artista_repository.dart';

class ArtistaRepositoryImpl implements ArtistaRepository {
  final ArtistaService api;

  ArtistaRepositoryImpl({required this.api});

  @override
  Future<List<Artista>> getAll() async {
    final responseJson = await api.get();

    final listDto =
        responseJson.map((json) => ArtistaDto.fromJson(json)).toList();

    return listDto.map((dto) => ArtistaMapper().toDomain(dto)).toList();
  }
}
