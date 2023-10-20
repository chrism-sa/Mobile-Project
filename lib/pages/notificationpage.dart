import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          // Notifikasi 1
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey), // Perubahan di sini
              borderRadius: BorderRadius.circular(8),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Feature Available!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'We have added exciting new features to our app. Check them out now!',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    // Tindakan yang ingin diambil saat tombol ditekan
                  },
                  child: Text('Explore New Features'),
                ),
              ],
            ),
          ),

          // Notifikasi 2 (Tambah notifikasi lainnya di sini jika perlu)
        ],
      ),
    );
  }
}
