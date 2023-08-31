import 'package:flutter/material.dart';

import 'Nom.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Nom> personneList = [
    Nom(nompersonne: 'Vladislav'),
    Nom(nompersonne: 'Jhon'),
    Nom(nompersonne: 'Patrick'),
    Nom(nompersonne: 'Bernard'),
    Nom(nompersonne: 'Marc'),
  ];

  void changerPositionUp(int index) {
    if (index > 0) {
      setState(() {
        final personne = personneList.removeAt(index);
        personneList.insert(index - 1, personne);
      });
    }
  }

  void changerPositionDown(int index) {
    if (index < personneList.length - 1) {
      setState(() {
        final personne = personneList.removeAt(index);
        personneList.insert(index + 1, personne);
      });
    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          backgroundColor: Theme.of(context).colorScheme.inversePrimary,

          title: Text(widget.title),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                for(int i = 0; i < personneList.length; i++)
                Card(
                  color: Colors.blueGrey,
                  child: Row(
                    children: [
                      SizedBox(width: 40,),
                      Text("${personneList[i].nompersonne}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                      Spacer(),
                      MaterialButton(
                          child: Text("Up"),
                          color: Colors.cyan,
                          onPressed: (){
                            changerPositionUp(i);
                          }),
                      SizedBox(width: 10,),
                      MaterialButton(
                          child: Text("Down"),
                          color: Colors.cyan,
                          onPressed: (){
                            changerPositionDown(i);
                          }),
                      SizedBox(width: 10,),
                    ],
                  ),
                )
              ],
            ),
          ],
        )
    );
  }

}