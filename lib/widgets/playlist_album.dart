import 'package:flutter/material.dart';
import 'package:musify/pages/play_screen.dart';

class PlayListAlbums extends StatefulWidget {
  const PlayListAlbums({super.key});

  @override
  State<PlayListAlbums> createState() => _PlayListAlbumsState();
}

class _PlayListAlbumsState extends State<PlayListAlbums> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          for (int i = 0; i < 7; i++)
            Container(
              margin: const EdgeInsets.only(top: 10, right: 10, left: 5),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
              decoration: BoxDecoration(
                  color: const Color(0xFF30314D),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PlayScreen()));
                    },
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'images/cat1.jpeg',
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Alan Walker',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('15 songs')
                      ],
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_vert,
                    size: 38,
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
