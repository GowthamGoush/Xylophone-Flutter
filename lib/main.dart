import 'package:audioplayers/audioplayers.dart'; // imports the package audioplayers.dart 
import 'package:flutter/material.dart'; // imports the package material.dart
import 'package:flutter/cupertino.dart'; // imports the package cupertino.dart


void main() {
  runApp(XylophoneApp());   // Opens the app on call 
}

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

void keyAudio(int keyNumber) { // Provides haptic feedback on each keypress
  AudioCache keySound = AudioCache();
  keySound.play('assets_note$keyNumber.wav');
}

Expanded buildKey(Color color, int keyNumber) { // each key is associated to one of the audio files using its key value.
  return Expanded(
      child: OutlinedButton(
    child: Container(
      color: color,
    ),
    onPressed: () {
      keyAudio(keyNumber);
    },
  ));
}

class _XylophoneAppState extends State<XylophoneApp> { // Creates a state of the widget 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blue, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
