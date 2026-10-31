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
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileAvatar(
            ),
            SizedBox(height: 16),
            ProfileInfo(),
            SizedBox(height: 24),
            ProfileStats(),
          ],
        ),
      ),
    );
  }
}
