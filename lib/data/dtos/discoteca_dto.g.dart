// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discoteca_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscotecaDto _$DiscotecaDtoFromJson(Map<String, dynamic> json) => DiscotecaDto(
      id: (json['id'] as num?)?.toInt(),
      nombre: json['nombre'] as String?,
      descrip: json['descrip'] as String?,
      url_logo: json['url_logo'] as String?,
      url_portada: json['url_portada'] as String?,
      direc: json['direc'] as String?,
      url_maps: json['url_maps'] as String?,
      telf: json['telf'] as String?,
    );

Map<String, dynamic> _$DiscotecaDtoToJson(DiscotecaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'descrip': instance.descrip,
      'url_logo': instance.url_logo,
      'url_portada': instance.url_portada,
      'direc': instance.direc,
      'url_maps': instance.url_maps,
      'telf': instance.telf,
    };
