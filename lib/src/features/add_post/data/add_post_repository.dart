import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:petshare/src/core/resources/app_const.dart';
import 'package:petshare/src/features/add_post/models/post_model.dart';

abstract interface class AddPostRepository {
  Future<void> addPost(PostModel post);
}

class AddPostRepositoryImpl implements AddPostRepository {
  AddPostRepositoryImpl({
    required FirebaseFirestore firestore,
    required FirebaseStorage storage,
  })  : _firestore = firestore,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseStorage _storage;

  @override
  Future<void> addPost(PostModel post) async {
    try {
      final colRef = _firestore.collection(AppConst.posts);
      final docRef = await colRef.add(post.toJson());
      await colRef.doc(docRef.id).update({'id': docRef.id});
    } catch (e) {
      debugPrint('addPost error: ${e.toString()}');
    }
  }
}
