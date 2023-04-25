import 'package:flutter/material.dart';

class MovieDetailThumbnail extends StatelessWidget {
  final String thumbnail;

  const MovieDetailThumbnail({Key? key, required this.thumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            ),
            const Icon(
              Icons.play_circle,
              size: 100,
              color: Colors.white,
            )
          ],
        ),
        Container(
          height: 80,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x3affffff), Color(0xffffffff)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
        )
      ],
    );
  }
}