import "dart:io";
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'notes/Notes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: AppBar(
                  title: Text('FlutterBook'),
                  bottom: TabBar(tabs: [
                    Tab(icon: Icon(Icons.date_range), text: "Appointments"),
                    Tab(icon: Icon(Icons.contacts), text: "Contacts"),
                    Tab(icon: Icon(Icons.note), text: "Notes"),
                    Tab(icon: Icon(Icons.assignment_turned_in), text: "Tasks"),
                  ])),
              body: TabBarView(
                children: [Notes(),Notes(),Notes(),Notes()],
              ))),
    );
  }
}
