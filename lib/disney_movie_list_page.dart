
import 'package:disney_movies_new/movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'disney_movies_list_item_view.dart';

class DisneyMovieListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Disney movies'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = movies[index];
          return DisneyMovieListItemView(movie: item);
        },
        itemCount: movies.length,

      )
    );
  }
}
