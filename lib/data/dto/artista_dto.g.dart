// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'artista_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArtistaDto _$ArtistaDtoFromJson(Map<String, dynamic> json) => ArtistaDto(
      id: (json['id'] as num?)?.toInt(),
      nombre: json['nombre'] as String?,
      tipo: json['tipo'] as String?,
      descrip: json['descrip'] as String?,
      biografia: json['biografia'] as String?,
      tags: json['tags'] as String?,
      url_foto: json['url_foto'] as String?,
      url_foto2: json['url_foto2'] as String?,
    );

Map<String, dynamic> _$ArtistaDtoToJson(ArtistaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'tipo': instance.tipo,
      'descrip': instance.descrip,
      'biografia': instance.biografia,
      'tags': instance.tags,
      'url_foto': instance.url_foto,
      'url_foto2': instance.url_foto2,
    };
