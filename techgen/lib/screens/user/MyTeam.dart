// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({super.key});

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
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
          centerTitle: true,
          title: const Text(
            "My Team",
            style: TextStyle(
              color: Color(0xFF1E3D33),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Icon(
                Icons.groups_rounded,
                color: Color(0xFF1E3D33),
                size: 80,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                child: Text(
                  "Members",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            TeamMembers()
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          backgroundColor: Color(0xFF1E1E1E),
          onPressed: null,
          child: Icon(
            Icons.add,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class TeamMembers extends StatelessWidget {
  final List<String> names = <String>[
    'Me',
    'Yash Sharma',
    'Aman Keswani',
    'Vishwa Jadhav'
  ];

  @override
  Widget build(BuildContext context) {
    final devWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.separated(
        // padding: const EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: double.infinity,
            // height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: const Icon(
                Icons.person,
                color: Color(0xFF1E3D33),
                size: 30,
              ),
              title: Text(names[index]),
              trailing: const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF1E3D33),
                ),
              ),
            ),
          );
        },

        separatorBuilder: (context, index) => index > names.length
            ? const Divider(
                height: 1,
                color: Color.fromARGB(255, 129, 179, 163),
              )
            : const Divider(
                height: 0,
              ),
      ),
    );
  }
}
