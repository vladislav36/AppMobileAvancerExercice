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
      title: "Drapeau",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drapeau'),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFF4BAE50),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFF8F8F9),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Color(0xFFF24136),
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
