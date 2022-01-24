// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActorDetailsModel _$$_ActorDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_ActorDetailsModel(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      role: json['role'] as String,
      summary: json['summary'] as String,
      height: json['height'] as String,
      birthDate: json['birthDate'] as String,
      awards: json['awards'] as String,
    );

Map<String, dynamic> _$$_ActorDetailsModelToJson(
        _$_ActorDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'role': instance.role,
      'summary': instance.summary,
      'height': instance.height,
      'birthDate': instance.birthDate,
      'awards': instance.awards,
    };
