import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int trackNumber){
    final player = AudioCache();
    player.play('note$trackNumber.wav');
  }

  Expanded BuildKey(int KeyNumber, Color KeyColor){
    return Expanded(
      child: FlatButton(
        onPressed: (){
          PlaySound(KeyNumber);
        },
        color: KeyColor,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(1,Colors.red),
              BuildKey(2,Colors.orange),
              BuildKey(3,Colors.yellow),
              BuildKey(4,Colors.green),
              BuildKey(5,Colors.teal),
              BuildKey(6,Colors.blue),
              BuildKey(7,Colors.purple),
          ]
      ),
    ),
    ),
    );
  }
}
