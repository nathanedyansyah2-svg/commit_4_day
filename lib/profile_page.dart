
import 'package:flutter/material.dart';
import 'package:flutter_pt_6/profile_avatar.dart';
import 'package:flutter_pt_6/profile_info.dart';
import 'package:flutter_pt_6/profile_stats.dart';
import 'package:flutter_pt_6/experience_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userName = 'Muhammad Nathan Edyansyah';

  final List<String> experiences = const [
    'Driver ShopeFood - 17 Kecamatan',
    'PKL - 1 bulan di pecat',
    'Lead Developer - Aplikasi Sekurindo',
    'Backend Engineer - Pengembangan Sistem E-money',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 16),
            ProfileInfo(userName: userName),
            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () {
                String newName = userName;

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Edit Profil'),
                      content: TextFormField(
                        initialValue: userName,
                        onChanged: (value) {
                          newName = value;
                        },
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              userName = newName;
                            });
                            Navigator.pop(context);
                          },
                          child: const Text('Simpan'),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
            ),

            const SizedBox(height: 24),
            const ProfileStats(),
            const SizedBox(height: 24),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Pengalaman Kerja',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Divider(),

            Expanded(
              child: ListView.builder(
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    title: experiences[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
