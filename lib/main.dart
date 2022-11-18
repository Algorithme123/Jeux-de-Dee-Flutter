import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int deeGauche =1;
  int deeDroit =1;
  
  void rechargerDee() {
    setState(() {
      deeGauche = Random().nextInt(6) + 1;
      deeDroit = Random().nextInt(6) + 1;
    });
  }
    affichage_de(int numerodee){

    return Expanded(
      flex: 1,
      child: TextButton(
        onPressed: (){
          print("Dee de Gauche");
          print(deeGauche);
          rechargerDee();
        },
        child: Image(
          image: AssetImage('images/dice$numerodee.png'),
        ),
      ),

    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Jeux de dee Daniel",
          style:  TextStyle(
            fontSize: 15.0,
          ),),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              affichage_de(deeGauche),
              affichage_de(deeDroit),

            ],
          ),
        )
      ),
    );
  }
}
