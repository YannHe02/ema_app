import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:ema_app/pages/start.dart';
import '../main.dart';
import 'package:provider/provider.dart';
import 'package:ema_app/pages/einstellung.dart';



class KopfMain extends StatelessWidget {
  const KopfMain({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Scaffold(
        backgroundColor: appColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
          title: const Text("Kopfrechnen"),
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
        body: Center(
          child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const KopfInGame(),
                ));
              },
              child: Align(
                alignment: Alignment.center,
                child: DefaultTextStyle.merge(
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  child: const Text("Drücke auf den Bildschirm um zu Starten!"),
                  textAlign: TextAlign.center,
                ),
              )),
        ));
  }
}

class KopfInGame extends StatefulWidget {
  const KopfInGame({super.key});
  @override
  State<KopfInGame> createState() => _KopfInGameState();
}

class _KopfInGameState extends State<KopfInGame> {
  //Timer
  int _counter = 60;
  late Timer _timer;

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(oneSecond, (timer) {
      if (_counter <= 0) {
        timer.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => kopfEndGame(finalScore: score),
          ),
        );
      } else {
        setState(() {
          _counter--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Timer stoppen, wenn der State zerstört wird
    super.dispose();
  }

  //Rechenaufgabe
  String _currentTask = "";
  int result = 0;
  List<int> answers = [1, 2, 3, 4, 5, 6];
  var random = Random();
  int score = 0;

  void taskBuilder() {
    int num1 = random.nextInt(500) + 1;
    int num2 = random.nextInt(500) + 1;
    _currentTask = '$num1 + $num2';
    result = num1 + num2;
  }

  int randomNum() {
    int randomNumber;
    do {
      randomNumber = 1 + random.nextInt(1000);
    } while (randomNumber == result);
    return randomNumber;
  }

  void randomAnswers() {
    answers[0] = result;
    for (int i = 1; i < 6; i++) {
      answers[i] = randomNum();
    }
    answers.shuffle(Random());
  }

  void check(int clickResult) {
    if (clickResult == result) {
      score++;
      taskBuilder();
      randomAnswers();
    } else {
      _counter -= 5;
    }
  }

  //Bei Start ausgeführt
  @override
  void initState() {
    super.initState();
    taskBuilder();
    randomAnswers();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(1, 1, 1, 0.0),
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultTextStyle.merge(
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
              child: Center(child: Text('$_counter')),
            ),
            DefaultTextStyle.merge(
              style: const TextStyle(
                fontSize: 42,
                color: Colors.white,
              ),
              child: Center(child: Text(_currentTask)),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextStyle.merge(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        child: Center(child: Text('Score: $score')),
                      ),
                      DefaultTextStyle.merge(
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                        child: const Center(child: Text("Highscore:")),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 100,
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: ElevatedButton(
                                onPressed: () {
                                  check(answers[0]);
                                },
                                child: Text('${answers[0]}'),
                              ),
                            ),
                          )),
                      Expanded(
                          child: SizedBox(
                            height: 100,
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: ElevatedButton(
                                onPressed: () {
                                  check(answers[1]);
                                },
                                child: Text('${answers[1]}'),
                              ),
                            ),
                          )),
                      Expanded(
                          child: SizedBox(
                            height: 100,
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: ElevatedButton(
                                onPressed: () {
                                  check(answers[2]);
                                },
                                child: Text('${answers[2]}'),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: SizedBox(
                            height: 100,
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: ElevatedButton(
                                onPressed: () {
                                  check(answers[3]);
                                },
                                child: Text('${answers[3]}'),
                              ),
                            ),
                          )),
                      Expanded(
                          child: SizedBox(
                            height: 100,
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: ElevatedButton(
                                onPressed: () {
                                  check(answers[4]);
                                },
                                child: Text('${answers[4]}'),
                              ),
                            ),
                          )),
                      Expanded(
                          child: SizedBox(
                            height: 100,
                            child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: ElevatedButton(
                                onPressed: () {
                                  check(answers[5]);
                                },
                                child: Text('${answers[5]}'),
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class kopfEndGame extends StatelessWidget {
  final int finalScore;
  const kopfEndGame({super.key, required this.finalScore});

  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(1, 1, 1, 0.0),
          elevation: 0.0,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DefaultTextStyle.merge(
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
              child: Center(child: Text('Dein Score: $finalScore')),
            ),
            DefaultTextStyle.merge(
              style: const TextStyle(
                fontSize: 35,
                color: Colors.white,
              ),
              child: const Center(
                child: Text(
                  'Der Aktuelle Highscore liegt bei:',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: SizedBox.expand(
                child: FractionallySizedBox(
                  widthFactor: 0.4,
                  heightFactor: 0.15,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const StartPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    child: const Text("Weiter"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


