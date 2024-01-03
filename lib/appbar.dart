import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100.0,
      backgroundColor: const Color(0xFFFFFFFF),
      shadowColor: Colors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            size: 40.0,
            color: Colors.black,
          ),
          const Text(
            "Change Theme",
            style: TextStyle(color: Colors.black),
          ),
          ClipOval(
            child: Image.network(
              "https://i.imgur.com/0g1mNKo.jpg",
              width: 50.0,
              height: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
