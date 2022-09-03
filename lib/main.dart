import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XyloTuneApp());
}

class XyloTuneApp extends StatelessWidget {
  void playTune(int tuneNumber) async {
    final player = AudioPlayer();
    // await player.setSource(AssetSource('note1.wav'));
    await player.play(AssetSource('note$tuneNumber.wav'));
  }

  Expanded xyloKey(Color color, int tuneNumber) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          playTune(tuneNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Center(
              child: Text('XyloTune'),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloKey(Colors.deepPurple, 1),
              xyloKey(Colors.blue, 2),
              xyloKey(Colors.lightBlueAccent, 3),
              xyloKey(Colors.green, 4),
              xyloKey(Colors.yellow, 5),
              xyloKey(Colors.orange, 6),
              xyloKey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}
