import 'package:flutter/material.dart';
import 'librarianHome.dart';

class LibrarianLogin extends StatefulWidget {
  const LibrarianLogin({super.key});

  @override
  _LibrarianLoginState createState() => _LibrarianLoginState();
}

class _LibrarianLoginState extends State<LibrarianLogin> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('assets/nssf.png'),
                ),
                const SizedBox(height: 50),
                _buildUsernameField(),
                const SizedBox(height: 20),
                _buildPasswordField(),
                _buildUserLoginButton(),
                const SizedBox(height: 20),
                _buildLibrarianLoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameField() {
    return TextField(
      controller: _usernameController,
      decoration: InputDecoration(
        labelText: 'Librarian name',
        hintText: 'FirstName.LastName',
        suffixIcon: const Icon(Icons.person),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return TextField(
      controller: _passwordController,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: const Icon(Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      obscureText: true,
    );
  }

  Widget _buildLibrarianLoginButton() {
    return ElevatedButton.icon(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Calling the LibrarianLogin function
          _LibrarianLogin();
        }
      },
      icon: const Icon(Icons.login),
      label: const Text('Login'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      ),
    );
  }

  Widget _buildUserLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Not a Librarian?'),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/userLogin');
          },
          child: const Text(' User Login '),
        ),
      ],
    );
  }

  void _LibrarianLogin() {
    // LibrarianLogin logic here
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username == 'chris' && password == 'pass') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LibHomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }
}
