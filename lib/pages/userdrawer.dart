import 'package:flutter/material.dart';
import 'package:my_app/pages/LibrarianLogin.dart';
import 'constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(20),
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
                  'User Dashboard',
                  style: TextStyle(
                    color: chocolateColor,
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
                Icon(Icons.view_list),
                SizedBox(width: 10.0),
                Text(
                  'Library Catalogue',
                  style: TextStyle(
                    color: chocolateColor,
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
                Icon(Icons.inventory),
                SizedBox(width: 10.0),
                Text(
                  'Suggest Acquisition',
                  style: TextStyle(
                    color: chocolateColor,
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
                    color: chocolateColor,
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
                  Icon(Icons.local_library_outlined),
                  SizedBox(width: 10.0),
                  Text(
                    'Login as Librarian',
                    style: TextStyle(
                      color: chocolateColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LibrarianLogin()),
                );
              }),

          // List End
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return const CircleAvatar(
      radius: 70,
      backgroundImage: AssetImage('assets/nssf2.png'),
    );
  }
}
