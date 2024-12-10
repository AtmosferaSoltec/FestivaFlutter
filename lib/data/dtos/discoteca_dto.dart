import 'package:json_annotation/json_annotation.dart';

part 'discoteca_dto.g.dart';

@JsonSerializable()
class DiscotecaDto {
  final int? id;
  final String? nombre;
  final String? descrip;
  final String? url_logo;
  final String? url_portada;
  final String? direc;
  final String? url_maps;
  final String? telf;

  DiscotecaDto({
    required this.id,
    required this.nombre,
    required this.descrip,
    required this.url_logo,
    required this.url_portada,
    required this.direc,
    required this.url_maps,
    required this.telf,
  });

  factory DiscotecaDto.fromJson(Map<String, dynamic> json) =>
      _$DiscotecaDtoFromJson(json);
  Map<String, dynamic> toJson() => _$DiscotecaDtoToJson(this);
}
