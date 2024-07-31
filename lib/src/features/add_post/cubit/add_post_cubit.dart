import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
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
            petCategory: PetCategory.dogs,
            description: '',
          ),
        );

  final AddPostRepository _repository;

  void setPetName(String value) {
    emit(state.copyWith(petName: value));
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
        years: 1,
        imageURL: '',
        breed: '',
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
    required this.petCategory,
    required this.description,
  });

  final String petName;
  final PetCategory petCategory;
  final String description;

  AddPostState copyWith({
    String? petName,
    PetCategory? petCategory,
    String? description,
  }) {
    return AddPostState(
      petName: petName ?? this.petName,
      petCategory: petCategory ?? this.petCategory,
      description: description ?? this.description,
    );
  }

  @override
  List<Object?> get props => [petName];
}
