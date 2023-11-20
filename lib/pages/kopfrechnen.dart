import 'dart:async';
import 'package:flutter/material.dart';

class KopfMain extends StatelessWidget {
  const KopfMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Kopfrechnen"),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
                builder: (context) => const KopfInGame(),
            )
          );

        },
        child: DefaultTextStyle.merge(
          style: const TextStyle(
            fontSize: 30,
          ),
          child: const Center(
            child: Text("Drücke auf den Bildschirm um zu Starten!"),
          )
        ),
      ),
    );
  }
}



class KopfInGame extends StatefulWidget {
  const KopfInGame({super.key});
  @override
  State<KopfInGame> createState() => _KopfInGameState();
}

class _KopfInGameState extends State<KopfInGame> {

  int _counter = 60;

  void _startTimer(){
    setState(() {
      if (_counter >= 0) {
        _counter--;
      } else {
        _counter = 0;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), _startTimer);
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        backgroundColor: const  Color.fromRGBO(1, 1, 1, 0.0),
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body:  Column(
        children: [
          DefaultTextStyle.merge(style:
            const TextStyle(
                  fontSize: 35,
              color: Colors.white,
            ),
              child:
              Center(
                child: Text("$_counter")
              )
          ),

      ],
      )
    );
  }
}

