import 'package:json_annotation/json_annotation.dart';

part 'artista_dto.g.dart';

@JsonSerializable()
class ArtistaDto {
  final int? id;
  final String? nombre;
  final String? tipo;
  final String? descrip;
  final String? biografia;
  final String? tags;
  final String? url_foto;
  final String? url_foto2;

  ArtistaDto({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.descrip,
    required this.biografia,
    required this.tags,
    required this.url_foto,
    required this.url_foto2,
  });

  factory ArtistaDto.fromJson(Map<String, dynamic> json) =>
      _$ArtistaDtoFromJson(json);
  Map<String, dynamic> toJson() => _$ArtistaDtoToJson(this);
}
