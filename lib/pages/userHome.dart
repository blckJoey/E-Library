import 'package:flutter/material.dart';
import 'searchField.dart';
import 'constants.dart';
import 'documentCards.dart';
import 'appBar.dart';
import 'userdrawer.dart';
import 'userFooter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const DrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: appBarHeight,
              width: double.infinity,
              padding: const EdgeInsets.all(paddingSize),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildLogo(),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(1, -41),
              child: const SearchField(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 15.0),
                const Text(
                  'Browse For Documents',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: chocolateColor,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 34.0,
                      color: chocolateColor,
                    )),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(paddingSize),
              child: const Column(
                children: [
                  DocumentCardList(
                    cards: [
                      DocumentCard(
                        assetImage: 'assets/book01.jpeg',
                      ),
                      DocumentCard(
                        assetImage: 'assets/book02.jpeg',
                      ),
                      DocumentCard(
                        assetImage: 'assets/book03.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const UserFooter(),
    );
  }
}

Widget _buildLogo() {
  return const CircleAvatar(
    radius: 75,
    backgroundImage: AssetImage('assets/nssf.png'),
  );
}
