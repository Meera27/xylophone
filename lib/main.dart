import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void sounds(int soundno) {
    final player = AudioCache();
    player.play('note$soundno.wav');
  }

  Expanded newSound({Color color, int soundno}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          sounds(soundno);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              newSound(color: Colors.deepPurple, soundno: 1),
              newSound(color: Colors.indigo, soundno: 2),
              newSound(color: Colors.blue, soundno: 3),
              newSound(color: Colors.green, soundno: 4),
              newSound(color: Colors.yellow, soundno: 5),
              newSound(color: Colors.orange, soundno: 6),
              newSound(color: Colors.red, soundno: 7),
            ], //children
          ),
        ),
      ),
    );
  }
}
