import 'package:flutter/material.dart';
import 'package:ema_app/pages/training.dart';
import 'package:ema_app/pages/einstellung.dart';
import 'package:ema_app/pages/statistik.dart';
//import 'package:ema_app/pages/start.dart';
import 'package:ema_app/pages/kopfrechnen.dart';
import '../main.dart';
import 'package:provider/provider.dart';


class GoToTrainingBtn extends StatelessWidget {
  const GoToTrainingBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: appColors.buttonColor,
          elevation: 10,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TrainingPage()));
          },
          label: Text("Training",
            style: TextStyle(
                color: appColors.schriftColor1
            ),),
        ),
      ),
    );
  }
}

class GoToStatistikBtn extends StatelessWidget {
  const GoToStatistikBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: appColors.buttonColor,
          elevation: 10,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const StatistikPage()));
          },
          label: Text("Statistik",
            style: TextStyle(
                color: appColors.schriftColor1
            ),),
        ),
      ),
    );
  }
}

class GoToEinstellungenBtn extends StatelessWidget {
  const GoToEinstellungenBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 60, 0, 60),
      child: SizedBox(
        width: 300,
        child: FloatingActionButton.extended(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: appColors.buttonColor,
          elevation: 10,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EinstellungenPage()));
          },
          label: Text("Einstellungen",
            style: TextStyle(
                color: appColors.schriftColor1
            ),),
        ),
      ),
    );
  }
}

class GoToKopfrechnen extends StatelessWidget {
  const GoToKopfrechnen({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
        child: SizedBox(
          width: 250,
          height: 250,
          child: FloatingActionButton.extended(
            foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
            backgroundColor: appColors.buttonColor,
            elevation: 10,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const KopfMain()));
            },
            label: Text(
              "Kopfrechnen",
              style: TextStyle(
                color: appColors.schriftColor1,
                fontSize: 25.0,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ));
  }
}

class GoBackBtn extends StatelessWidget {
  const GoBackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
        child: FloatingActionButton(
          foregroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
          backgroundColor: appColors.buttonColor,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ));
  }
}

