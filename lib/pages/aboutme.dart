import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(IconlyLight.profile),
              title: const Text("Name: Charis Maulana"),
            ),
            ListTile(
              leading: const Icon(IconlyLight.call),
              title: const Text("Phone: +1234567890"),
            ),
            ListTile(
              leading: const Icon(IconlyLight.location),
              title: const Text("Address: 123 Main Street, City, Country"),
            ),
            ListTile(
              leading: const Icon(IconlyLight.message),
              title: const Text("Email: charismaulana@gmail.com"),
            ),
          ],
        ),
      ),
    );
  }
}
