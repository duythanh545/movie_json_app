import 'package:flutter/material.dart';

import '../model/movie.dart';

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;

  const MovieDetailsHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${movie.year} - ${movie.genre}'.toUpperCase()),
          Text('${movie.plot}. More...')
        ],
      ),
    );
  }
}