import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  // const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {

  var s = 3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final AudioCache player = AudioCache();
                // AudioPlayer advancedPlayer = AudioPlayer();

                player.play('note$s.wav');
              },
              child: Text("Click Me"),
            ),

          ),
          // child: Container(),
        ),
      ),
    );
  }
}


