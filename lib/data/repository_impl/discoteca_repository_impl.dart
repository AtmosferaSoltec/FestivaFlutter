import 'package:festiva_flutter/data/service/service.dart';
import 'package:festiva_flutter/domain/model/discoteca.dart';
import 'package:festiva_flutter/domain/repository/discoteca_repository.dart';

class DiscotecaRepositoryImpl implements DiscotecaRepository {
  final DiscotecaService api;

  DiscotecaRepositoryImpl({required this.api});

  @override
  Future<List<Discoteca>> getAll() {
    throw UnimplementedError();
  }
}
