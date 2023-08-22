import 'dart:math';

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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexLapin = Random().nextInt(4);

  int _flops = 0;
  int _pafs = 0;
  void gererTape(int index){

      print("Bouton" + index.toString());
      if (this._indexLapin == index.toString()){
        this._pafs++;
        _indexLapin = Random().nextInt(4);
      }
      else{
        this._flops++;
        _indexLapin = Random().nextInt(4);
      }
  }


  @override
  Widget build(BuildContext context) {
  var b0 =  MaterialButton(
    onPressed: () {
      gererTape(0);
      setState(() {

      });
    },
    child: Text(this._indexLapin == 0 ? "Lapin" : "Taupe"),
  );
  var b1 =  MaterialButton(
    onPressed: () {
      gererTape(1);
      setState(() {

      });
    }
    ,
    child: Text(this._indexLapin == 1 ? "Lapin" : "Taupe"),
  );
  var b2 =  MaterialButton(
    onPressed: () {
      gererTape(2);

      setState(() {

      });
      },
    child: Text(this._indexLapin == 2 ? "Lapin" : "Taupe"),
  );
  var b3 =  MaterialButton(
    onPressed: () {
      gererTape(3);
      setState(() {

      });
    },
    child: Text(this._indexLapin == 3 ? "Lapin" : "Taupe"),
  );
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Tape le lapin"),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Pafs" + this._pafs.toString(),
                style: TextStyle(color:  Colors.red, fontSize: 20)),
                Text("Flops" + this._flops.toString(),
                    style: TextStyle(color:  Colors.green, fontSize: 20))
              ],
            ),
            const Text(
              'Tape le lapin',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b0,
                b1
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b2,
                b3
              ],
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
