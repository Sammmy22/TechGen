// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyFriends extends StatefulWidget {
  const MyFriends({super.key});

  @override
  State<MyFriends> createState() => _MyFriendsState();
}

class _MyFriendsState extends State<MyFriends> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE8F4F0),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFE8F4F0),
          leading: const IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: null,
          ),
          centerTitle: true,
          title: const Text(
            "My Friends",
            style: TextStyle(
              color: Color(0xFF1E3D33),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(children: []),
      ),
    );
  }
}
