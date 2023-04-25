import 'package:flutter/material.dart';

import '../main.dart';
import '../model/movie.dart';
import 'movie_list_view_detail.dart';

class MovieListView extends StatelessWidget {
  const MovieListView({Key? key}) : super(key: key);
  static List<Movie> movieList = Movie.getMovies();

  static List<String> movies = ['Titanic', 'Rambo', "Avatar", '300', 'Dance'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              movieCard(movieList[index], context),
              Positioned(
                child: movieImg(movieList[index].poster),
                top: 10,
              ),
            ],
          );
          // return Card(
          //   elevation: 4.5,
          //   color: Color(0xfffdeff2),
          //   child: ListTile(
          //     onTap: () {
          //       Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => MovieListViewDetail(
          //               movieName: movieList[index].title,
          //               movie: movieList[index],
          //             ),
          //           ));
          //     },
          //     title: Text(movieList.elementAt(index).title),
          //     subtitle: Text('Haha'),
          //     trailing: Icon(Icons.ac_unit),
          //     leading: CircleAvatar(
          //       child: Container(
          //         width: 100,
          //         height: 100,
          //         child: null,
          //         decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(30),
          //             image: DecorationImage(
          //               image: NetworkImage(movieList[index].poster),
          //               fit: BoxFit.fill,
          //             )),
          //       ),
          //     ),
          //   ),
          // );
        },
        itemCount: movieList.length,
      ),
    );
  }

  Widget movieCard(Movie movie, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MovieListViewDetail(
                movieName: movie.title,
                movie: movie,
              ),
            ));
      },
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Color(0xfffdeff2),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8, left: 54),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(movie.title),
                    Text('Rating: ${movie.imdbRating} / 10'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Release: ${movie.released}'),
                    Text(movie.runtime),
                    Text(movie.rated)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget movieImg(String imgUrl) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
          DecorationImage(fit: BoxFit.cover, image: NetworkImage(imgUrl))),
    );
  }
}