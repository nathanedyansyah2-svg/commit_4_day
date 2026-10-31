import 'package:flutter/material.dart';
import 'package:flutter_pt_6/profile_avatar.dart';
import 'package:flutter_pt_6/profile_info.dart';
import 'package:flutter_pt_6/profile_stats.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 16),
            const ProfileInfo(),
            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
            ),

            const SizedBox(height: 24),
            const ProfileStats(),
          ],
        ),
      ),
    );
  }
}