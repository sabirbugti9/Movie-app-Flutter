import 'package:flutter/material.dart';
import 'package:my_app/components/genre_card.dart';

import '../../../constants.dart';

class Genres extends StatelessWidget {
  final List<String> genres = [
    "Action",
    "Crime",
    "Comedy",
    "Drama",
    "Horror",
    "Animation"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(
          genre: genres[index],
        ),
      ),
    );
  }
}
