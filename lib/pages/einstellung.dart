import 'package:flutter/material.dart';
//import 'package:ema_app/buttons/button.dart';
import '../main.dart';
import 'package:provider/provider.dart';
import '../firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';



class EinstellungenPage extends StatefulWidget {
  const EinstellungenPage({super.key});

  @override
  State<EinstellungenPage> createState() => _EinstellungenPageState();
}

class _EinstellungenPageState extends State<EinstellungenPage> {
  @override
  Widget build(BuildContext context) {
    final appColors = Provider.of<AppColors>(context);
    return Scaffold(
        backgroundColor: appColors.backgroundColor,
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(49, 49, 49, 1.0),
          title: const Text("Einstellungen"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0), // Fügen Sie hier die gewünschten Padding-Werte ein
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Farbmodus:",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: appColors.schriftColor1
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0), // Fügen Sie hier den gewünschten Padding-Wert ein
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          appColors.darkMode();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black45, // Hintergrundfarbe
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20), // Abgerundete obere linke Ecke
                              bottomLeft: Radius.circular(20), // Abgerundete untere linke Ecke
                              topRight: Radius.zero, // Eckige obere rechte Ecke
                              bottomRight: Radius.zero, // Eckige untere rechte Ecke
                            ),
                          ),
                          side: const BorderSide(color: Colors.grey, width: 2.0), // Schwarze Umrandung
                        ),
                        child: const Text(
                          "Darkmode",
                          style: TextStyle(
                              color: Colors.white70
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          appColors.brightMode();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white70, // Hintergrundfarbe
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.zero, // Eckige obere linke Ecke
                              bottomLeft: Radius.zero, // Eckige untere linke Ecke
                              topRight: Radius.circular(20), // Abgerundete obere rechte Ecke
                              bottomRight: Radius.circular(20), // Abgerundete untere rechte Ecke
                            ),
                          ),
                          side: const BorderSide(color: Colors.grey, width: 2.0), // Schwarze Umrandung
                        ),
                        child: const Text(
                          "Brightmode",
                          style: TextStyle(
                              color: Colors.black87
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    try {
                      UserCredential userCredential = await signInWithGoogle();
                      if (userCredential.user != null) {
                      }
                    } catch (e) {
                      // Handle the error
                    }
                  },
                  child: const Text('Sign in with Google'),
                )
              ],
            ),
          ),
        )
    );
  }
}