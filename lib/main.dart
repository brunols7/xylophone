import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  XylophoneApp({super.key});
  final player = AudioPlayer();

  playSound(int index) async {
    await player.play(AssetSource('note$index.wav'));
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(1),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.orange,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(2),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.yellow,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(3),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(4),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.cyan,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(5),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(6),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.purple,
                  child: TextButton(
                    child: Text(''),
                    onPressed: () => playSound(7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
