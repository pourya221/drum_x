import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: GetApp(),
      ),
    );
  }
}

class GetApp extends StatefulWidget {
  GetApp({Key? key}) : super(key: key);

  @override
  State<GetApp> createState() => _GetAppState();
}

class _GetAppState extends State<GetApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DecoratedBox(
          position: DecorationPosition.background,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('Images/hang.jpg'),
            ),
          ),
          child: GetBody()),
    );
  }
}

Widget GetBody() {
  return Column(
    children: [
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('1.wav');
                },
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playsound('2.wav');
                },
                child: Text(''),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {playsound('3Ringtone.wav');},
                child: Text(''),
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                onPressed: () {playsound('0Ringtone.wav');},
                child: Text(''),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {playsound('4Ringtone.wav');},
                child: Text(''),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {playsound('5Ringtone.wav');},
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {playsound('6Ringtone.wav');},
                child: Text(''),
              ),
            )
          ],
        ),
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {playsound('7Ringtone.wav');},
                child: Text('7'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {playsound('8Ringtone.wav');},
                child: Text('8'),
              ),
            )
          ],
        ),
      )
    ],
  );
}
playsound(String sound){
  var player = AssetsAudioPlayer();
  player.open(Audio(sound));
  player.play();
}
