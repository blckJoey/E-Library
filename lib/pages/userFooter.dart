import 'package:flutter/material.dart';
import 'constants.dart';

class UserFooter extends StatelessWidget {
  const UserFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home, color: chocolateColor),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.add_circle_outline_outlined,
              color: chocolateColor,
              size: 35,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_active, color: chocolateColor),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
