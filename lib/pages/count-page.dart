import 'package:flutter/material.dart';

class MyCountPage extends StatelessWidget {
  const MyCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ChangeNotifierProvider Example',
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 50),
            Text('0', style: Theme.of(context).textTheme.headline4),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.red,
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.green,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
