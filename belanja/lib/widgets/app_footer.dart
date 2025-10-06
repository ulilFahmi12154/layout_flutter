import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.deepPurple,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Aplikasi Belanja',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Dibuat oleh:',
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          SizedBox(height: 4),
          Text(
            "Nama: Muhammad Ulil Fahmi Ma'rifatulloh", 
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Text(
            'NIM: 2341760194', 
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}