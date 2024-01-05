import 'package:flutter/material.dart';
//import 'package:ema_app/buttons/button.dart';
import '../main.dart';
import 'package:provider/provider.dart';
import 'package:ema_app/pages/einstellung.dart';



class StatistikPage extends StatefulWidget {
  const StatistikPage({super.key});

  @override
  State<StatistikPage> createState() => _StatistikPageState();
}

class _StatistikPageState extends State<StatistikPage> {
  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Scaffold(
      backgroundColor: appColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
        title: const Text("Statistik"),
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
    );
  }
}

