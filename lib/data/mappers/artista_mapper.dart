import 'package:festiva_flutter/data/dtos/artista_dto.dart';
import 'package:festiva_flutter/domain/model/artista.dart';

class ArtistaMapper {
  Artista toDomain(ArtistaDto dto) {
    return Artista(
      id: dto.id ?? 0,
      nombre: dto.nombre ?? '',
      tipo: dto.tipo ?? '',
      descrip: dto.descrip ?? '',
      biografia: dto.biografia ?? '',
      tags: dto.tags ?? '',
      urlFoto: dto.url_foto ?? '',
      urlFoto2: dto.url_foto2 ?? '',
    );
  }
}
