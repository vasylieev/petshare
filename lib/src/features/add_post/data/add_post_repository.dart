import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:petshare/src/core/resources/app_const.dart';
import 'package:petshare/src/features/add_post/models/post_model.dart';

abstract interface class AddPostRepository {
  Future<void> addPost(PostModel post);

  Future<String?> getUserId();
}

class AddPostRepositoryImpl implements AddPostRepository {
  AddPostRepositoryImpl({
    required FirebaseFirestore firestore,
    required FirebaseAuth auth,
    required FirebaseStorage storage,
  })
      : _firestore = firestore,
        _auth = auth,
        _storage = storage;

  final FirebaseFirestore _firestore;
  final FirebaseAuth _auth;
  final FirebaseStorage _storage;

  User? get _currentUser => _auth.currentUser;

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

  @override
  Future<String?> getUserId() async {
    return _currentUser?.uid;
  }
}
