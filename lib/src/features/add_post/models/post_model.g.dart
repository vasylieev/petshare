// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      pet: PetModel.fromJson(json['pet'] as Map<String, dynamic>),
      authorId: json['authorId'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'pet': instance.pet,
      'authorId': instance.authorId,
      'description': instance.description,
    };
