import 'package:flutter/material.dart';

class MyEventPage extends StatelessWidget {
  const MyEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('StreamProvider Example', style: TextStyle(fontSize: 20)),
        const SizedBox(height: 50),
        Text('0', style: Theme.of(context).textTheme.headline4)
      ],
    ));
  }
}
