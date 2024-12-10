import 'package:festiva_flutter/core/network/network.dart';
import 'package:festiva_flutter/data/mappers/mapper.dart';

import 'package:festiva_flutter/domain/model/discoteca.dart';
import 'package:festiva_flutter/domain/repository/discoteca_repository.dart';

class DiscotecaRepositoryImpl implements DiscotecaRepository {
  final ApiDiscoteca api;
  final DiscotecaMapper discotecaMapper;

  DiscotecaRepositoryImpl({required this.api, required this.discotecaMapper});

  @override
  Future<List<Discoteca>> getAll() {
    throw UnimplementedError();
  }
}
