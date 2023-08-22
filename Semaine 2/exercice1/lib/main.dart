import 'package:flutter/material.dart';

import 'SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstRoute(),
        '/second': (context) => const SecondRoute(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class FirstRoute extends StatefulWidget {
  const FirstRoute();

  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class ScreenArguments {
  final String title;
  ScreenArguments(this.title);
}

class _FirstRouteState extends State<FirstRoute> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercice routage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 25), // Add your desired padding
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(labelText: 'Enter something'),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              child: const Text('Open route'),
              onPressed: () {
                String enteredText = _textController.text;
                // Navigate to the second route when tapped.
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: ScreenArguments(_textController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}

