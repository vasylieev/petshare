// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostModel _$PostModelFromJson(Map<String, dynamic> json) => PostModel(
      authorFullName: json['authorFullName'] as String,
      authorAvatarURL: json['authorAvatarURL'] as String,
      category: $enumDecode(_$PostCategoryEnumMap, json['category']),
      text: json['text'] as String,
      imageURL: json['imageURL'] as String,
      likedIds:
          (json['likedIds'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$PostModelToJson(PostModel instance) => <String, dynamic>{
      'authorFullName': instance.authorFullName,
      'authorAvatarURL': instance.authorAvatarURL,
      'text': instance.text,
      'imageURL': instance.imageURL,
      'category': _$PostCategoryEnumMap[instance.category]!,
      'likedIds': instance.likedIds,
    };

const _$PostCategoryEnumMap = {
  PostCategory.dogs: 'dogs',
  PostCategory.cats: 'cats',
  PostCategory.fish: 'fish',
  PostCategory.rabbits: 'rabbits',
  PostCategory.mice: 'mice',
  PostCategory.squirrels: 'squirrels',
  PostCategory.turtles: 'turtles',
};
