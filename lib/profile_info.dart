  import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Muhammad Nathan Edyansyah',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold
    ),
    textAlign: TextAlign.center,
    );
  }
}