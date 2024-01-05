import 'package:flutter/material.dart';
import '../buttons/button.dart';
import '../main.dart';
import 'package:provider/provider.dart';


class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Scaffold(
      backgroundColor: appColors.backgroundColor,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GoToTrainingBtn(),
            GoToStatistikBtn(),
            GoToEinstellungenBtn(),
          ],
        ),
      ),
    );
  }
}