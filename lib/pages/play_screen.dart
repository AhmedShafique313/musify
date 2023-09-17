import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musify/pages/music_page.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(202, 0, 0, 0),
              Color.fromARGB(196, 3, 3, 94),
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 450,
                  width: 450,
                  decoration: const BoxDecoration(
                      color: Color(0xFF30314D),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  CupertinoIcons.back,
                                  size: 30,
                                )),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.more_vert,
                              size: 30,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage('images/cat1.jpeg'))),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Center(
                          child: Text(
                        'Develet Benim',
                        style: TextStyle(fontSize: 20),
                      )),
                      const Center(
                          child: Text(
                        'Kurulas Osman',
                        style: TextStyle(fontSize: 14),
                      )),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 60,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(202, 0, 0, 0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Play all',
                                    style: TextStyle(fontSize: 18)),
                                Icon(
                                  Icons.play_circle,
                                  size: 30,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(202, 0, 0, 0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Shuffle', style: TextStyle(fontSize: 18)),
                                Icon(
                                  Icons.shuffle_rounded,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                for (int i = 0; i < 15; i++)
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MusicPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 10),
                      margin:
                          const EdgeInsets.only(top: 10, right: 10, left: 5),
                      decoration: BoxDecoration(
                          color: const Color(0xFF30314D),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(
                        children: [
                          InkWell(
                            // onTap: () {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => const MusicPage()));
                            // },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Develet Benim",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: [
                                    Text('Kurulas Osman  '),
                                    Text("03-52")
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 165,
                          ),
                          Icon(
                            Icons.play_circle_fill_outlined,
                            size: 38,
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
