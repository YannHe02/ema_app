import 'package:flutter/material.dart';
import 'package:ema_app/pages/training.dart';
import 'package:ema_app/pages/einstellung.dart';
import 'package:ema_app/pages/statistik.dart';
//import 'package:ema_app/pages/start.dart';
import 'package:ema_app/pages/kopfrechnen.dart';

class GoToTrainingBtn extends StatelessWidget {
  const GoToTrainingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: const Color.fromRGBO(183, 183, 183, 1.0),
          elevation: 10,
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const TrainingPage()));},
          label: const Text("Training"),
        ),
      ),
    );
  }
}

class GoToStatistikBtn extends StatelessWidget {
  const GoToStatistikBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: const Color.fromRGBO(183, 183, 183, 1.0),
          elevation: 10,
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const StatistikPage()));},
          label: const Text("Statistik"),
        ),
      ),
    );
  }
}

class GoToEinstellungenBtn extends StatelessWidget {
  const GoToEinstellungenBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: const Color.fromRGBO(183, 183, 183, 1.0),
          elevation: 10,
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const EinstellungenPage()));},
          label: const Text("Einstellungen"),
        ),
      ),
    );
  }
}

class GoToKopfrechnen extends StatelessWidget {
  const GoToKopfrechnen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 250,
        height: 250,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: const Color.fromRGBO(183, 183, 183, 1.0),
          elevation: 10,
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const KopfMain()));},
          label: const Text("test"),
        ),
      ),
    );
  }
}


class GoBackBtn extends StatelessWidget {
  const GoBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
        child: FloatingActionButton(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: const Color.fromRGBO(183, 183, 183, 1.0),
          onPressed: () {Navigator.pop(context);},
          child: const Icon(Icons.arrow_back),
        )
    );
  }
}