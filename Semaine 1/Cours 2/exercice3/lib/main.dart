import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 12,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Container(
                          height: 200,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Container(
                        height: 100,
                        child: Text('ALLO'),
                      ),
                    ),
                    Flexible(
                      flex: 6,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  height: 100,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Container(
                                  height: 100,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: Container(
          width: double.infinity,
          child: ElevatedButton(
            child: Text('Press me!'),
            onPressed: () {
              print('Hello');
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );





  }
}
