import 'package:disney_movies_new/disney_movie.dart';
import 'package:disney_movies_new/disney_movie_page.dart';
import 'package:disney_movies_new/movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'disney_movies_list_item_view.dart';

class DisneyMovieListPage extends StatelessWidget {
  const DisneyMovieListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Disney movies'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _showMovieDetails(context, movies[index]),
              child: DisneyMovieListItemView(
                movie: movies[index],
              ),
            );
          },
          itemCount: movies.length,
        ));
  }

  void _showMovieDetails(BuildContext context, DisneyMovie movie) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DisneyMoviePage(movie: movie),
      ),
    );
  }
}
