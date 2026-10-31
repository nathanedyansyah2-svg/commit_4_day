import 'package:flutter/material.dart';
import 'stat_item.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          StatItem(count: '15', label: 'Proyek'),
          SizedBox(width: 30),
          StatItem(count: '1.2K', label: 'Followers'),
          SizedBox(width: 30),
          StatItem(count: '42', label: 'Following'),
        ],
      ),
    );
  }
}