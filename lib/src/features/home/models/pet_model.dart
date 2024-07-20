import 'package:json_annotation/json_annotation.dart';

part 'pet_model.g.dart';

@JsonSerializable()
class PetModel {
  PetModel({
    required this.name,
    required this.years,
    required this.imageURL,
    required this.breed,
  });

  final String name;
  final int years;
  final String imageURL;
  final String breed;

  factory PetModel.fromJson(Map<String, dynamic> json) => _$PetModelFromJson(json);

  Map<String, dynamic> toJson() => _$PetModelToJson(this);
}
