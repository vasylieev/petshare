import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:petshare/src/features/add_post/data/add_post_repository.dart';

final sl = GetIt.I;
final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final FirebaseStorage _storage = FirebaseStorage.instance;

Future<void> initDi() async {
  ///cubits
  // sl.registerFactory(
  //       () => RegistrationCubit(
  //     repository: sl(),
  //     validator: sl(),
  //   ),
  // );

  ///repositories
  sl.registerLazySingleton<AddPostRepository>(
    () => AddPostRepositoryImpl(
      firestore: _firestore,
      storage: _storage,
    ),
  );
}
