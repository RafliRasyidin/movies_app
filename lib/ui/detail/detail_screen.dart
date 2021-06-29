import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:movies_app/model/movie.dart';
import 'package:movies_app/utils/color.dart';

import 'detail_mobile_page.dart';
import 'detail_web_page.dart';

class DetailScreen extends StatelessWidget {
  final Movie detailMovie;

  DetailScreen({required this.detailMovie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return DetailWebPage(movie: detailMovie);
          } else {
            return DetailMobilePage(movie: detailMovie);
          }
        },
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State createState() {
    return _FavoriteStateButton();
  }
}

class _FavoriteStateButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colorAccent,
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
          _showToast();
        },
        icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
        color: Colors.white,
      ),
    );
  }

  void _showToast() {
    if (isFavorite) {
      Fluttertoast.showToast(
          msg: 'Favorited',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: colorAccent,
          webBgColor: colorAccent,
          webPosition: ToastGravity.BOTTOM,
          textColor: Colors.white,
          fontSize: 16);
    } else {
      Fluttertoast.showToast(
          msg: 'Unfavorited',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: colorAccent,
          webBgColor: colorAccent,
          webPosition: ToastGravity.BOTTOM,
          textColor: Colors.white,
          fontSize: 16);
    }
  }
}
