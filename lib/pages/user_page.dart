import 'package:flutter/material.dart';
import 'package:flutter_provider/models/model.dart';
import 'package:provider/provider.dart';

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
        Consumer<List<User>>(
          builder: (context, List<User> users, _) {
            return Expanded(
              child: users.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        return Container(
                            height: 50,
                            color: Colors.grey[(index * 200) % 400],
                            child: Center(
                                child: Text(
                                    '${users[index].firstName} ${users[index].lastName} | ${users[index].website}')));
                      },
                    ),
            );
          },
        ),
      ],
    );
  }
}
