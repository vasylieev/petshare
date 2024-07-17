import 'package:json_annotation/json_annotation.dart';

part 'post_model.g.dart';

enum PostCategory { dogs, cats, fish, rabbits, mice, squirrels, turtles }

@JsonSerializable()
class PostModel {
  final String authorFullName, authorAvatarURL, text, imageURL;
  final PostCategory category;
  final List<String> likedIds;

  PostModel({
    required this.authorFullName,
    required this.authorAvatarURL,
    required this.category,
    required this.text,
    required this.imageURL,
    required this.likedIds,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
