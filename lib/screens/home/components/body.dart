import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';

import 'categories.dart';
import 'genres.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Categorylist(),
          Genres(),
          SizedBox(height: kDefaultPadding),
MovieCarousel(),
        ],
      ),
    );
  }
}
