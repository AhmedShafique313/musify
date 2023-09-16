import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  List<String> songsname = ["Madely", "Ya Man Buhali", "Rehmat Ul Lil Alameen"];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          for (int i = 0; i < 10; i++)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              margin: const EdgeInsets.only(top: 10, right: 10, left: 5),
              decoration: BoxDecoration(
                  color: const Color(0xFF30314D),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Medley",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [Text('Muhammad Tahir  '), Text("05-30")],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 125,
                  ),
                  const Icon(
                    Icons.play_circle_fill_outlined,
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
