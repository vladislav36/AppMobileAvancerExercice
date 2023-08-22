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
    var myColor = Color(0xFF4BAE50);
    var cont = Container(
      color: myColor,
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercice plein_de_containers'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(100)),
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: const EdgeInsets.all(400),
                        height: 200,
                        color: Color(0xFF0F5413),
                      ),
                    ),
                  ],),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFF748674),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.fromLTRB(4,0,4,100)),
                    Expanded(

                      child: Container(
                        height: 200,
                        width: 200,
                        color: Color(0xFF8A5555),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [

                    Expanded(
                      flex: 1,
                      child : Padding(
                        padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10, left: 10),
                        child: Container(
                          height: 200,
                          color: Color(0xFF040706),
                        ),
                      ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFF00FF0D),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFFB3C3DC),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFF312424),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFF30179F),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFF114416),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Color(0xFF1C1919),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],

        ),
      ),
    );

  }
}
