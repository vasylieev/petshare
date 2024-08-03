import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:petshare/src/core/resources/breeds.dart';
import 'package:petshare/src/core/resources/enums.dart';
import 'package:petshare/src/features/add_post/data/add_post_repository.dart';
import 'package:petshare/src/features/add_post/models/post_model.dart';
import 'package:petshare/src/features/home/models/pet_model.dart';

class AddPostCubit extends Cubit<AddPostState> {
  AddPostCubit({
    required AddPostRepository repository,
  })  : _repository = repository,
        super(
          const AddPostState(
            petName: '',
            petCategory: PetCategory.cats,
            description: '',
            petAge: '',
            ageLabel: 'Days',
            petBreed: '',
            breedItems: Breeds.catBreeds
          ),
        );

  final AddPostRepository _repository;

  void setPetName(String value) {
    emit(state.copyWith(petName: value));
  }

  void setPetAge(String value) {
    emit(state.copyWith(petAge: value));
  }

  void setAgeLabel(String value) {
    emit(state.copyWith(ageLabel: value));
  }

  void setPetBreed(String value) {
    emit(state.copyWith(petBreed: value));
  }

  void setBreedItems(PetCategory category) {
    debugPrint('category: $category');

    List<String> breeds;
    switch (category) {
      case PetCategory.all:
        breeds = Breeds.catBreeds;
        break;
      case PetCategory.cats:
        breeds = Breeds.catBreeds;
        break;
      case PetCategory.dogs:
        breeds = Breeds.dogBreeds;
        break;
      case PetCategory.fish:
        breeds = Breeds.fishBreeds;
        break;
      case PetCategory.rabbits:
        breeds = Breeds.rabbitBreeds;
        break;
      case PetCategory.rats:
        breeds = Breeds.ratBreeds;
        break;
      case PetCategory.squirrels:
        breeds = Breeds.squirrelBreeds;
        break;
      case PetCategory.turtles:
        breeds = Breeds.turtleBreeds;
        break;
      case PetCategory.other:
        breeds = [];
        break;
      default:
        breeds = [];
        break;
    }

    debugPrint('breeds selected: $breeds');

    emit(state.copyWith(breedItems: breeds));
    debugPrint('state breed items: ${state.breedItems}');
  }


  void setPetCategory(PetCategory value) {
    emit(state.copyWith(petCategory: value));
  }

  void setDescription(String value) {
    emit(state.copyWith(description: value));
  }

  Future<void> addPost() async {
    try {
      final newPost = await _getNewPost();
      if (newPost != null) {
        await _repository.addPost(newPost);
      }
    } catch (e) {}
  }

  Future<PostModel?> _getNewPost() async {
    //final authorId = await _repository.getUserId();
    final authorId = 'test author id';
    //if (authorId == null) return null;
    return PostModel(
      pet: PetModel(
        name: state.petName,
        years: int.parse(state.petAge),
        imageURL: '',
        breed: state.petBreed,
      ),
      authorId: authorId,
      description: state.description,
    );
  }
}

// MARK: - State

@immutable
final class AddPostState extends Equatable {
  const AddPostState({
    required this.petName,
    required this.petAge,
    required this.ageLabel,
    required this.petBreed,
    required this.petCategory,
    required this.description,
    required this.breedItems,
  });

  final String petName;
  final String petAge;
  final String ageLabel;
  final String petBreed;
  final PetCategory petCategory;
  final String description;
  final List<String> breedItems;

  AddPostState copyWith({
    String? petName,
    String? petAge,
    String? ageLabel,
    String? petBreed,
    PetCategory? petCategory,
    String? description,
    List<String>? breedItems
  }) {
    return AddPostState(
      petName: petName ?? this.petName,
      petAge: petAge ?? this.petAge,
      ageLabel: ageLabel ?? this.ageLabel,
      petBreed: petBreed ?? this.petBreed,
      petCategory: petCategory ?? this.petCategory,
      description: description ?? this.description,
      breedItems: breedItems ?? this.breedItems,
    );
  }

  @override
  List<Object?> get props => [
    petName,
    petAge,
    ageLabel,
    petBreed,
    petCategory,
    description,
    breedItems,
  ];
}
