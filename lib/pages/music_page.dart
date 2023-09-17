import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:musify/utils.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;

  Duration _duration = const Duration();
  Duration _position = const Duration();

  @override
  void initState() {
    initPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  Future initPlayer() async {
    player = AudioPlayer();
    path = AssetSource('audios/Osmanan.mp3');

    // set a callback for changing duration
    player.onDurationChanged.listen((Duration d) {
      setState(() => _duration = d);
    });

    // set a callback for position change
    player.onPositionChanged.listen((Duration p) {
      setState(() => _position = p);
    });

    // set a callback for when audio ends
    player.onPlayerComplete.listen((_) {
      setState(() => _position = _duration);
    });
  }

  void playPause() async {
    if (isPlaying) {
      player.pause();
      isPlaying = false;
    } else {
      player.play(path);
      isPlaying = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(children: [
              Column(
                children: [
                  Container(
                    height: 480,
                    width: 400,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(178, 3, 3, 94),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.sort,
                                  size: 32,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.more_vert,
                                  size: 32,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Container(
                            height: 280,
                            width: 280,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                    image: AssetImage('images/cat1.jpeg'))),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Develet Benim',
                          style: TextStyle(
                              decoration: TextDecoration.none, fontSize: 28),
                        ),
                        const Text(
                          'Kurulas Osman',
                          style: TextStyle(
                              decoration: TextDecoration.none, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Slider(
                    value: _position.inSeconds.toDouble(),
                    onChanged: (value) async {
                      await player.seek(Duration(seconds: value.toInt()));
                      setState(() {});
                    },
                    min: 0,
                    max: _duration.inSeconds.toDouble(),
                    inactiveColor: Colors.grey,
                    activeColor: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text(_duration.format())],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          player.seek(
                              Duration(seconds: _position.inSeconds - 10));
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.timer_10,
                          size: 30,
                        ),
                      ),
                      InkWell(
                        onTap: playPause,
                        child: Icon(
                          isPlaying
                              ? Icons.pause_circle_filled
                              : Icons.play_circle_fill,
                          size: 60,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          player.seek(
                              Duration(seconds: _position.inSeconds + 10));
                          setState(() {});
                        },
                        child: const Icon(
                          Icons.timer_10,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ])));
  }
}
