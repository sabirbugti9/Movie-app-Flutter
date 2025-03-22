import 'package:flutter/material.dart';
import 'package:my_app/constants.dart';
import 'package:my_app/models/movie.dart';

import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';
import 'title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(color: Color(0xFF737599)),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      ),
    );
  }
}
