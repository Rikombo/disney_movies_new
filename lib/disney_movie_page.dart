import 'package:flutter/material.dart';

class DisneyMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          'Disney Movies',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
            child: Text(
              'Lilo and Stitch',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
            child: Image.network(
              'https://static.onecms.io/wp-content/uploads/sites/6/2019/04/mcdlian_ec010-2000.jpg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
            child: Text(
              'Lilo & Stitch is a 2002 American animated science fiction comdedy-drama film produced by Walt Disney Feature Animation and released by Walt Disney Pictures.',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Spacer(
            flex: (1),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              alignment: Alignment.center,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Watch Now',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
