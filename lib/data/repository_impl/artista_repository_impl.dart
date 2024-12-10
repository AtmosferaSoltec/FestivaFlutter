import 'package:festiva_flutter/core/network/api_artista.dart';
import 'package:festiva_flutter/data/dtos/artista_dto.dart';
import 'package:festiva_flutter/data/mappers/artista_mapper.dart';
import 'package:festiva_flutter/domain/model/artista.dart';
import 'package:festiva_flutter/domain/repository/artista_repository.dart';

class ArtistaRepositoryImpl implements ArtistaRepository {
  final ApiArtista api;
  final ArtistaMapper artistaMapper;

  ArtistaRepositoryImpl({required this.api, required this.artistaMapper});

  @override
  Future<List<Artista>> getAll() async {
    final responseJson = await api.get();

    final listDto =
        responseJson.map((json) => ArtistaDto.fromJson(json)).toList();

    return listDto.map((dto) => artistaMapper.toDomain(dto)).toList();
  }
}
