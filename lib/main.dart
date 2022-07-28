import 'package:flutter/material.dart';
import 'package:flutter_provider/pages/count_page.dart';
import 'package:flutter_provider/pages/event_page.dart';
import 'package:flutter_provider/pages/user_page.dart';
import 'package:flutter_provider/providers/count_provider.dart';
import 'package:flutter_provider/providers/event_provider.dart';
import 'package:flutter_provider/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'models/model.dart';

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
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider<CountProvider>.value(value: CountProvider()),
            FutureProvider<List<User>>(
              initialData: const [],
              create: (_) async => UserProvider().loadUserData(),
            ),
            StreamProvider(
              create: (_) => EventProvider().intStream(),
              initialData: 0,
            ),
          ],
          child: DefaultTabController(
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
        ));
  }
}
