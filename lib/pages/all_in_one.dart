import 'package:flutter/material.dart';
import 'package:musify/widgets/favourite.dart';
import 'package:musify/widgets/playlist_album.dart';
import 'package:musify/widgets/trending_list.dart';

class AllInOne extends StatefulWidget {
  const AllInOne({super.key});

  @override
  State<AllInOne> createState() => _AllInOneState();
}

class _AllInOneState extends State<AllInOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(202, 0, 0, 0),
                Color.fromARGB(178, 3, 3, 94),
              ])),
          child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.sort,
                              size: 32,
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_vert,
                              size: 32,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Musify",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Lets start the music",
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TabBar(
                        isScrollable: true,
                        labelStyle: TextStyle(fontSize: 18),
                        indicator: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.blue, width: 3))),
                        tabs: [
                          Tab(
                            text: 'Trending',
                          ),
                          Tab(
                            text: 'Play list',
                          ),
                          Tab(
                            text: 'Favourites',
                          ),
                          Tab(
                            text: 'Files',
                          ),
                        ],
                      ),
                      const Flexible(
                          child: TabBarView(children: [
                        Trending(),
                        PlayListAlbums(),
                        Favourites(),
                        Trending(),
                      ])),
                    ]),
              )),
        ),
      ),
    );
  }
}
