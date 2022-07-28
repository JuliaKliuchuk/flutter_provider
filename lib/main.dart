import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/count-page.dart';
import 'package:flutter_provider/pages/event-page.dart';
import 'package:flutter_provider/pages/user-page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Provider Demo"),
              centerTitle: true,
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.add)),
                  Tab(icon: Icon(Icons.person)),
                  Tab(icon: Icon(Icons.message)),
                ],
              ),
            ),
            body: const TabBarView(
              children: <Widget>[
                MyCountPage(),
                MyUserPage(),
                MyEventPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
