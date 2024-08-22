import 'package:flutter/material.dart';
import 'package:my_app/pages/UserLogin.dart';

class LibDrawerWidget extends StatelessWidget {
  const LibDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 20),
          _buildLogo(),
          const SizedBox(height: 30),

          // 1st option
          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.dashboard_customize),
                SizedBox(width: 10.0),
                Text(
                  'Library Dashboard',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          // 2nd option
          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.add_shopping_cart_sharp),
                SizedBox(width: 10.0),
                Text(
                  'Inventory Management',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          // 3rd option
          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.analytics_outlined),
                SizedBox(width: 10.0),
                Text(
                  'Reports & Analytics',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),

          // 4th option
          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 10.0),
                Text(
                  'Notifications',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),

          // 5th option

          ListTile(
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.person),
                SizedBox(width: 10.0),
                Text(
                  'User Login',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return const CircleAvatar(
      radius: 75,
      backgroundImage: AssetImage('assets/nssf2.png'),
    );
  }
}
