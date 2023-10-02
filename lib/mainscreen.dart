import 'package:flutter/material.dart';

import 'screen1.dart';
import 'screen2.dart';

import 'screen3.dart';

import 'screen4.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({super.key});

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 19, 95, 57),
            title: Text("WhatsApp"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.camera))
            ],
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(child: Icon(Icons.people)),
              Tab(
                child: Text("chats"),
              ),
              Tab(
                child: Text("status"),
              ),
              Tab(
                child: Text("calls"),
              ),
            ]),
          ),
          body: TabBarView(
            children: [screen1(), screen2(), screen3(), screen4()],
          )),
    );
  }
}
