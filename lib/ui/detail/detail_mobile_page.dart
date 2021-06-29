import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/model/movie.dart';
import 'package:movies_app/utils/color.dart';
import 'package:movies_app/utils/font.dart';
import 'package:movies_app/utils/extension_method.dart';

import 'detail_screen.dart';

class DetailMobilePage extends StatelessWidget {
  final Movie movie;

  DetailMobilePage({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.network(movie.backdropUrl),
                SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: colorAccent,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(Icons.arrow_back),
                              color: Colors.white,
                            ),
                          ),
                          FavoriteButton()
                        ],
                      ),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Text(
                movie.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16, left: 16),
              child: Text(movie.releaseDate.toMonthDateYearFormat(),
                  textAlign: TextAlign.center, style: informationTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_rate,
                                    color: colorAccent,
                                  ),
                                  Text(movie.voteAverage.toString(),
                                      style: informationTextStyle2)
                                ],
                              ),
                              Text(
                                movie.voteCount.toString(),
                                style: informationTextStyle3,
                              )
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(movie.popularity.toString(),
                                      style: informationTextStyle2)
                                ],
                              ),
                              Text(
                                'Popularity',
                                style: informationTextStyle3,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                'Overview',
                style: headerTextStyle,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                movie.overview,
                style: informationTextStyle,
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}