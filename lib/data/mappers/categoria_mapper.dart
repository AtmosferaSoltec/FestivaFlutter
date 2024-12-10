import 'package:festiva_flutter/data/dto/categoria_dto.dart';
import 'package:festiva_flutter/domain/model/categoria.dart';

class CategoriaMapper {
  Categoria toDomain(CategoriaDto dto) {
    return Categoria(
      id: dto.id ?? 0,
      nombre: dto.nombre ?? '',
    );
  }
}
