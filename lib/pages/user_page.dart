import 'package:flutter/material.dart';

class MyUserPage extends StatelessWidget {
  const MyUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('FutureProvider Example, users loaded from a File',
              style: TextStyle(fontSize: 17)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                  height: 50,
                  color: Colors.grey[(index * 200) % 400],
                  child: const Center(child: Text('TEST')));
            },
          ),
        ),
      ],
    );
  }
}
