import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
                          "Balaghal Ulah",
                          style: TextStyle(fontSize: 20),
                        ),
                        Row(
                          children: [Text('Mesut Kurtis  '), Text("08-20")],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 160,
                  ),
                  const Icon(
                    Icons.favorite,
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
