// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetModel _$PetModelFromJson(Map<String, dynamic> json) => PetModel(
      name: json['name'] as String,
      years: (json['years'] as num).toInt(),
      imageURL: json['imageURL'] as String,
      breed: json['breed'] as String,
    );

Map<String, dynamic> _$PetModelToJson(PetModel instance) => <String, dynamic>{
      'name': instance.name,
      'years': instance.years,
      'imageURL': instance.imageURL,
      'breed': instance.breed,
    };
