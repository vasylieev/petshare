import 'package:flutter/material.dart';
import 'package:petshare/src/core/widgets/backgrounds/app_default_background.dart';

class AddPetScreen extends StatelessWidget {
  const AddPetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppDefaultBackground(
      child: Text('Add Pet'),
    );
  }
}
