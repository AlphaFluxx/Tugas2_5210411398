import 'package:flutter/material.dart';
import 'bottomNavbar.dart';
import 'manageprofileScreen.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color(0xFFF5EEF8), 
              borderRadius: BorderRadius.circular(16), 
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/avatar_image.png', 
                  width: 100, 
                  height: 100,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Nama Lengkap',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'Asal Universitas',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Container(
            color: Color(0xFFF5EEF8), 
            child: ListTile(
              title: const Text('Kelola Akun',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageProfileScreen()),
                );
              },
            ),
          ),
          Container(
            color: Color(0xFFF5EEF8),
            child: ListTile(
              title: const Text('Notifikasi',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            color: Color(0xFFF5EEF8),
            child: ListTile(
              title: const Text('Privacy Policy',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            color: Color(0xFFF5EEF8),
            child: ListTile(
              title: const Text(
                'Terms of Service',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
      ),
    );
  }
}
