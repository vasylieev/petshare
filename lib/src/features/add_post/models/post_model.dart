import 'package:json_annotation/json_annotation.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';

part 'post_model.g.dart';

@JsonSerializable()
class PostModel {
  PostModel({
    required this.pet,
    required this.authorId,
    required this.description,
  });

  final PetModel pet;
  final String authorId;
  final String description;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
