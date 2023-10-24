import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
//import 'package:agriplant/pages/aboutme.dart';
//import 'package:agriplant/pages/onboarding_page.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: CircleAvatar(
              radius: 62,
              backgroundColor: Theme.of(context).colorScheme.primary,
              child: const CircleAvatar(
                radius: 60,
                foregroundImage: NetworkImage(
                    'https://cdn.idntimes.com/content-images/post/20221104/download-65049cac42b21fd08b36c35ae6eca9ce_600x400.jpeg'),
              ),
            ),
          ),
          Center(
            child: Text(
              "Charis Maulana",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Center(
            child: Text(
              "charismaulana@gmail.com",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 25),
          ListTile(
            title: const Text("About me"),
            leading: const Icon(IconlyLight.infoSquare),
            onTap: () {
              // Navigasi ke halaman "About Me"
              
            },
          ),
          ListTile(
            title: const Text("Logout"),
            leading: const Icon(IconlyLight.logout),
            onTap: () {
              // Tambahkan kode navigasi ke halaman utama di sini
              
                
            },
          ),
        ],
      ),
    );
  }
}
