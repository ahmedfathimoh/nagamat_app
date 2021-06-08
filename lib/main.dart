import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MazekaApp());
}

class MazekaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('نغمات'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            musicButton('samsung ', 'music-1.mp3', Colors.red),
            musicButton('iphone 11 ', 'music-2.mp3', Colors.blue),
            musicButton('Xiomi ', 'music-3.mp3', Colors.black),
            musicButton('infenax ', 'music-4.mp3', Colors.purple),
            musicButton('iphone 6 ', 'music-5.mp3', Colors.cyan),
            musicButton('oppo ', 'music-6.mp3', Colors.yellow),
            musicButton('hanuor ', 'music-7.mp3', Colors.green),
          ],
        ),
      ),
    );
  }
}

Widget musicButton(String txt, String ngam, Color color) {
  return Expanded(
    child: Container(
      width: double.infinity,
      height: 85.0,
      //margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.0),
      ),
      child: TextButton(
        onPressed: () {
          final playr = AudioCache();
          playr.play(ngam);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.music_note,
              color: color,
            ),
            Text(
              txt,
              style: TextStyle(
                color: color,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
