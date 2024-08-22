import 'package:flutter/material.dart';
import 'package:my_app/pages/userHome.dart';
import 'UserLogin.dart';
import 'LibrarianLogin.dart';

void main() => runApp(const LMS());

class LMS extends StatelessWidget {
  const LMS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomePage(),
      routes: {
        '/libLogin': (context) => const LibrarianLogin(),
        '/userLogin': (context) => const LoginPage(),
      },
    );
  }
}
