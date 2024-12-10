// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categoria_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriaDto _$CategoriaDtoFromJson(Map<String, dynamic> json) => CategoriaDto(
      id: (json['id'] as num?)?.toInt(),
      nombre: json['nombre'] as String?,
    );

Map<String, dynamic> _$CategoriaDtoToJson(CategoriaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
    };
