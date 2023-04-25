import 'package:flutter/material.dart';
import 'package:movie_app/ui/movie_list_view.dart';

import 'model/movie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieListView(),
    );
  }
}








