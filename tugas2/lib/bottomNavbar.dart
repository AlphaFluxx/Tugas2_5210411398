import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFF5EEF8),
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        const BottomNavigationBarItem(
          icon: ImageIcon(
            
            const AssetImage('assets/home.png'),
            size: 32.0, 
          ),
          label: 'home'
        ),
        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/home.png'),
            size: 32.0, 
          ),
          label: 'Akun',
        ),
        const BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('assets/home.png'),
            size: 32.0,
          ),
          label: 'Logout',
        ),
      ],
    );
  }
}
