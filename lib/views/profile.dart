import 'package:flutter/material.dart';
import 'package:kuismobile/models/data.dart';
import 'package:kuismobile/views/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                user1.image,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const SizedBox(
                  height: 250,
                  child: Center(child: Icon(Icons.broken_image, size: 50)),
                ),
              ),
              Text('Yang sedang login saat ini adalah : ${user1.name}'),
              Text(
                'Saya bersumpah mengerjakan soal kuis ini dengan cara yang jujur dan tidak curang dengan cara apapun',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // child: ElevatedButton(
    // onPressed: () {
    //   Navigator.pushAndRemoveUntil(
    //     context,
    //     MaterialPageRoute(builder: (context) => LoginPage()),
    //     (route) => false,
    //   );
    // },
    // child: Text("Logout"),
    // ),
  }
}
