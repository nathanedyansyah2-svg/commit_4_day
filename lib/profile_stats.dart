import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text('15'),
            Text('Proyek'),
          ],
        ),
        Column(
          children: [
            Text('1.3k'),
            Text('Followers'),
          ],
        ),
        Column(
          children: [
            Text('40'),
            Text('Following'),
          ],
        ),
      ],
    );
  }
}