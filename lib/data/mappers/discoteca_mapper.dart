import 'package:festiva_flutter/data/dto/discoteca_dto.dart';
import 'package:festiva_flutter/domain/model/discoteca.dart';

class DiscotecaMapper {
  Discoteca toDomain(DiscotecaDto dto) {
    return Discoteca(
      id: dto.id ?? 0,
      nombre: dto.nombre ?? '',
      descrip: dto.descrip ?? '',
      url_logo: dto.url_logo ?? '',
      url_portada: dto.url_portada ?? '',
      direc: dto.direc ?? '',
      url_maps: dto.url_maps ?? '',
      telf: dto.telf ?? '',
    );
  }
}
