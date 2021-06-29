import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/model/movie.dart';
import 'package:movies_app/utils/color.dart';
import 'package:movies_app/utils/font.dart';
import 'package:movies_app/utils/extension_method.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'detail_screen.dart';

class DetailWebPage extends StatelessWidget {
  final Movie movie;

  DetailWebPage({required this.movie});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 100);
    final double itemWidth = size.width / 3;
    final double rating = movie.voteAverage * 10;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(
                                colorPrimary.withOpacity(0.9), BlendMode.darken),
                            image: NetworkImage(movie.backdropUrl))),
                  ),
                  Padding(
                    padding: EdgeInsets.all(36),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: ClipRRect(
                                child: Image.network(
                                  movie.imageUrl,
                                  height: itemHeight,
                                  width: itemWidth,
                                  fit: BoxFit.fitHeight,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movie.title,
                                  style: TextStyle(
                                      fontFamily: POPPINS_FAMILY,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32,
                                      color: Colors.white),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      movie.releaseDate.toMonthDateYearFormat(),
                                      style: informationTextStyleWeb,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    CircleAvatar(
                                      backgroundColor: colorAccent,
                                      radius: 5,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                        child: Text(movie.genres.toString(),
                                            style: informationTextStyleWeb))
                                  ],
                                ),
                                SizedBox(height: 16),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: CircularPercentIndicator(
                                          radius: 76,
                                          lineWidth: 10,
                                          backgroundColor: Colors.white,
                                          progressColor: colorAccent,
                                          percent: movie.voteAverage / 10,
                                          center: Text(
                                            rating.toInt().toString() + '%',
                                            style: TextStyle(
                                                fontFamily: POPPINS_FAMILY,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 18,
                                                color: Colors.white),
                                          ),
                                        )),
                                    SizedBox(width: 8),
                                    Text(
                                      'User\nScore',
                                      style: headerTextStyleWeb,
                                    ),
                                    SizedBox(width: 16),
                                    FavoriteButton()
                                  ],
                                ),
                                SizedBox(height: 16),
                                Text('Overview', style: headerTextStyleWeb),
                                Text(
                                  movie.overview,
                                  style: informationTextStyleWeb,
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}