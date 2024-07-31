import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petshare/src/features/my_app/my_app.dart';
import 'package:petshare/src/core/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await di.initDi();
  runApp(const MyApp());
}