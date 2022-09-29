import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_movie_db/resources/resources.dart';

class Movie {
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String description;

  Movie({
    required this.id,
    required this.imageName,
    required this.title,
    required this.time,
    required this.description,
  });
}

class MovieListWidget extends StatefulWidget {
  MovieListWidget({Key? key}) : super(key: key);

  @override
  State<MovieListWidget> createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  final _movies = [
    Movie(
      id: 1,
      imageName: AppImages.mortalcombat8,
      title: 'Mortal Kombat',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 2,
      imageName: AppImages.mortalcombat8,
      title: 'Interstellar',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 3,
      imageName: AppImages.mortalcombat8,
      title: 'Fight club',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 4,
      imageName: AppImages.mortalcombat8,
      title: 'Deathnote',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 5,
      imageName: AppImages.mortalcombat8,
      title: 'Spongebob Squarepants',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 6,
      imageName: AppImages.mortalcombat8,
      title: 'Icarly',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 7,
      imageName: AppImages.mortalcombat8,
      title: 'Avengers',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 8,
      imageName: AppImages.mortalcombat8,
      title: 'Invincible',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 9,
      imageName: AppImages.mortalcombat8,
      title: 'Naruto',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
    Movie(
      id: 10,
      imageName: AppImages.mortalcombat8,
      title: 'JoJo',
      time: 'April 7, 2021',
      description:
          "MMA fighter Cole Young (Lewis Tan), accustomed to taking a beating for money, is unaware of his heritage-or why Outworld's Emperor Shang Tsung (Chin Han) has sent his best warrior, Sub-Zero (Joe Taslim), an otherworldly Cryomancer, to hunt Cole down. Fearing for his family's safety, Cole goes in search of Sonya Blade (Jessica McNamee) at the direction of Jax (Mehcad Brooks), a Special Forces Major who bears the same strange dragon marking Cole was born with.",
    ),
  ];

  var _filteredMovies = <Movie>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredMovies = _movies.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = _movies;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredMovies = _movies;
    _searchController.addListener(_searchMovies);
  }

  void _onMovieTap(int index) {
    final id = _movies[index].id;
    Navigator.of(context).pushNamed('/main_screen/movie_details_widget', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 80),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 163,
          itemBuilder: (BuildContext context, int index) {
            final movie = _filteredMovies[index];
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage(movie.imageName)),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            Text(
                              movie.title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5),
                            Text(
                              movie.time,
                              style: TextStyle(color: Colors.grey),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 20),
                            Text(
                              movie.description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => _onMovieTap(index),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Search',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
