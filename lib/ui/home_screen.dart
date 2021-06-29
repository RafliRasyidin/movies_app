import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/model/movie.dart';
import 'package:movies_app/ui/detail/detail_screen.dart';
import 'package:movies_app/ui/widgets/search_widget.dart';
import 'package:movies_app/utils/color.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MoviesGrid(gridCount: 2, widthDivider: 2,);
          } else if (constraints.maxWidth <= 920 && constraints.maxWidth > 600) {
            return MoviesGrid(gridCount: 4, widthDivider: 3,);
          } else {
            return MoviesGrid(gridCount: 6, widthDivider: 6,);
          }
        },
      ),
    );
  }
}

class MoviesGrid extends StatefulWidget {
  final int gridCount;
  final double widthDivider;

  MoviesGrid({required this.gridCount, required this.widthDivider});

  @override
  _MoviesGridState createState() => _MoviesGridState();
}

class _MoviesGridState extends State<MoviesGrid> {
  late List<Movie> movies;
  String query = '';

  @override
  void initState() {
    super.initState();
    movies = popularMovies;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / widget.widthDivider;
    return Scaffold(
      backgroundColor: colorPrimary,
      body: SafeArea(
        child: Column(
          children: [
            buildSearch(),
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.count(
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisCount: widget.gridCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  children: movies.map((movie) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(detailMovie: movie);
                        }));
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  movie.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query, onChanged: searchMovies, hintText: 'Search Movies');

  void searchMovies(String query) {
    final movies = popularMovies.where((movie) {
      final titleLower = movie.title.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.movies = movies;
    });
  }
}
