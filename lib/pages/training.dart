import 'package:flutter/material.dart';
import 'package:ema_app/buttons/button.dart';
import '../main.dart';
import 'package:provider/provider.dart';
import 'package:ema_app/pages/einstellung.dart';


class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Scaffold(
        backgroundColor: appColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
          title: const Text("Training"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.settings), // Zahnrad-Icon
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EinstellungenPage()));
              },
            ),
          ],
        ),
        body: const SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Wrap(spacing: 50, runSpacing: 10, children: [
                GoToKopfrechnen(),
                GoToKopfrechnen(),
                GoToKopfrechnen(),
                GoToKopfrechnen(),
                GoToKopfrechnen(),
                GoToKopfrechnen(),
                GoToKopfrechnen(),
                GoToKopfrechnen()
              ]),
            ),
          ),
        ));
  }
}
