import 'package:json_annotation/json_annotation.dart';

part 'categoria_dto.g.dart';

@JsonSerializable()
class CategoriaDto {
  final int? id;
  final String? nombre;

  CategoriaDto({this.id, this.nombre});

  factory CategoriaDto.fromJson(Map<String, dynamic> json) =>
      _$CategoriaDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriaDtoToJson(this);
}
