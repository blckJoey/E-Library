import 'package:flutter/material.dart';
import 'userHome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  void _login() {
    String username = usernameController.text;
    String password = passwordController.text;

    if (username == 'chris' && password == 'pass') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildLogo(),
              const SizedBox(height: 50),
              _buildUsernameField(),
              const SizedBox(height: 20),
              _buildPasswordField(),
              _buildSignUpButton(),
              const SizedBox(height: 20),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return const CircleAvatar(
      radius: 75,
      backgroundImage: AssetImage('assets/nssf.png'),
    );
  }

  Widget _buildUsernameField() {
    return TextField(
      controller: usernameController,
      decoration: InputDecoration(
        labelText: 'Username',
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
      controller: passwordController,
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

  Widget _buildSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Login as Librarian?'),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/libLogin');
          },
          child: const Text(' Login Here'),
        ),
      ],
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton.icon(
      onPressed: _login,
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

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
