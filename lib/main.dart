import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/source.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override

  void playSound(int num)
  {
    AudioPlayer player = AudioPlayer();
    player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey({required Color color, required int num, required String s})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () async {
          playSound(num);
        },
        child: Text(
            s),

      ),
    );

  }
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xylophone'),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                buildKey(color: Colors.red, num: 1, s: 'Sa'),
                buildKey(color: Colors.orange,num: 2, s: 'Re'),
                buildKey(color: Colors.yellow,num:3, s:'Ga'),
                buildKey(color: Colors.green,num:4, s: 'Ma'),
                buildKey(color: Colors.blue,num:5, s: 'Pa'),
                buildKey(color: Colors.indigo,num:6,s: 'Dha'),
                buildKey(color: Colors.purple,num:7, s: 'Ni'),




              ],
            ),
          )

        ),
        ),
      );
  }
}