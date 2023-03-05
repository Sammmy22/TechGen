// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ReferPage extends StatefulWidget {
  const ReferPage({super.key});

  @override
  State<ReferPage> createState() => _ReferPageState();
}

class _ReferPageState extends State<ReferPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final devWidth = MediaQuery.of(context).size.width;
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
        ),
        body: Column(
          children: [
            SizedBox(
              height: height * 0.15,
            ),
            const SizedBox(
              width: double.infinity,
              child: Text(
                "Refer and Earn",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 30),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  "Invite your friends and earn extra diamonds",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Card(
              color: const Color(0xFFA3DCCA),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('TECH052'),
                    SizedBox(
                      width: 40,
                    ),
                    IconButton(onPressed: null, icon: Icon(Icons.copy))
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: height * 0.1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    // For Instagram
                    ElevatedButton(onPressed: null, child: Text("I")),
                    // For Whatsapp
                    ElevatedButton(onPressed: null, child: Text("W")),
                    // For Twitter
                    ElevatedButton(onPressed: null, child: Text("T")),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
