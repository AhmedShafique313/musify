import 'package:flutter/material.dart';
import 'package:musify/pages/music_page.dart';
import 'package:musify/pages/splash_Screen.dart';
import 'package:musify/widgets/playlist_album.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "PlayListAlbums": (context) => const PlayListAlbums(),
        "MusicPage": (context) => const MusicPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
