// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PreviousEvents extends StatefulWidget {
  const PreviousEvents({super.key});

  @override
  State<PreviousEvents> createState() => _PreviousEventsState();
}

class _PreviousEventsState extends State<PreviousEvents> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE8F4F0),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: const IconButton(
            onPressed: null,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFF1E3D33),
            ),
          ),
          title: const Text(
            "Previous Events",
            style: TextStyle(
                color: Color(0xFF1E3D33),
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Column(
          children: [EventDisplayer()],
        ),
      ),
    );
  }
}

class EventDisplayer extends StatelessWidget {
  final List<String> entries = <String>[
    'Event A',
    'Event B',
    'Event C',
    'Event D',
    'Event E',
    'Event F',
    'Event G'
  ];

  final List<String> descriptions = <String>[
    'This is Event A',
    'This is Event B',
    'This is Event C',
    'This is Event D',
    'This is Event E',
    'This is Event F',
    'This is Event G'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
            child: Container(
              width: double.infinity,
              // height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFA3DCCA),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    child: Text(
                      entries[index],
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Text(descriptions[index]),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: 10,
          color: Colors.amber.withOpacity(0),
        ),
      ),
    );
  }
}
