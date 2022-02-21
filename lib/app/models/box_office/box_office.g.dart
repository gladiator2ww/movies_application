// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_office.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoxOffice _$$_BoxOfficeFromJson(Map<String, dynamic> json) => _$_BoxOffice(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      weekend: json['weekend'] as String,
      gross: json['gross'] as String,
      weeks: json['weeks'] as String,
    );

Map<String, dynamic> _$$_BoxOfficeToJson(_$_BoxOffice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'weekend': instance.weekend,
      'gross': instance.gross,
      'weeks': instance.weeks,
    };
