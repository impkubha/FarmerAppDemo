import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

class Farmer extends StatelessWidget {
  const Farmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Farmer"),
        actions: [
          IconButton(
              onPressed: () {
                logout(context);
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}

Future<void> logout(BuildContext context) async {
  CircularProgressIndicator();
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => LoginPage(),
    ),
  );
}
