import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:petshare/src/features/add_post/data/add_post_repository.dart';

class AddPostCubit extends Cubit<AddPostState> {
  AddPostCubit({
    required AddPostRepository repository,
  })  : _repository = repository,
        super(
          const AddPostState(
            petsName: '',
          ),
        );

  final AddPostRepository _repository;

  void setPetsName(String value) {
    emit(state.copyWith(petsName: value));
  }
}

// MARK: - State

@immutable
final class AddPostState extends Equatable {
  const AddPostState({
    required this.petsName,
  });

  final String petsName;

  AddPostState copyWith({
    String? petsName,
  }) {
    return AddPostState(
      petsName: petsName ?? this.petsName,
    );
  }

  @override
  List<Object?> get props => [petsName];
}
