import 'package:flutter/material.dart';

import '../model/movie.dart';
import '../util/movie_detail_thumbnail.dart';
import '../util/movie_details_header_with_poster.dart';
import '../util/movie_poster.dart';

class MovieListViewDetail extends StatelessWidget {
  final String movieName;
  final Movie movie;

  const MovieListViewDetail(
      {Key? key, required this.movieName, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movieName),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MovieDetailThumbnail(thumbnail: movie.poster),
          MovieDetailsHeaderWithPoster(movie: movie),
          MovieExtraPosters(posters: movie.image)
        ],
      ),
      // body: Container(
      //   margin: EdgeInsets.all(15),
      //   child: SingleChildScrollView(
      //     child: Center(
      //       child: Column(
      //         children: [
      //           Text(movie.title),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Container(
      //             height: 300,
      //             child: Image.network(movie.poster),
      //           ),
      //           SizedBox(
      //             height: 10,
      //           ),
      //           Container(
      //             width: 300,
      //             decoration: BoxDecoration(
      //                 border: Border.all(
      //                     color: Colors.grey, style: BorderStyle.solid)),
      //             child: Column(
      //               mainAxisAlignment: MainAxisAlignment.start,
      //               children: [
      //                 Text('Name: ${movie.title}\n'
      //                     'Year: ${movie.year}\n'
      //                     'Director: ${movie.director}'),
      //                 for(int i=0; i< movie.image.length; i++)
      //                   Container(child: Image.network(movie.image[i]),
      //                   padding: EdgeInsets.only(top: 20),)
      //               ],
      //             ),
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}