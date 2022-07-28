import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/count_provider.dart';
import 'package:provider/provider.dart';

class MyCountPage extends StatelessWidget {
  const MyCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountProvider state = Provider.of<CountProvider>(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('ChangeNotifierProvider Example',
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 50),
            Text('${state.counterValue}',
                style: Theme.of(context).textTheme.headline4),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.remove),
                  color: Colors.red,
                  onPressed: () =>
                      // TODO: 1-й вариант обращения к state
                      state.decrementCount(),
                ),
                // TODO: 2-й вариант обращения к state
                Consumer<CountProvider>(builder: (context, value, child) {
                  return IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.green,
                    onPressed: () => value.incrementCount(),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
