import 'package:flutter/material.dart'; // Mengimpor pustaka antarmuka Flutter[cite: 5]
// import 'package:kuismobile/root.dart'; // Mengimpor halaman Root untuk navigasi pasca-login[cite: 5]
import 'package:kuismobile/root.dart';

import '../models/data.dart'; // Mengimpor data user dummy untuk pemeriksaan autentikasi[cite: 5]

// Widget Login bertipe StatefulWidget karena menyimpan dan mengubah data di layar[cite: 5]
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoggedIn = false;

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == user1.username && password == user1.password) {
      setState(() {
        isLoggedIn = true;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root()),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          content: Text("Login Berhasil"),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text("Login Gagal. Username atau Password Salah"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text("Login Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is Login Page"),
              SizedBox(height: 30),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: login, child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}
