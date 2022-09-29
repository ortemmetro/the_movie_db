import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:the_movie_db/resources/resources.dart';
import 'package:the_movie_db/widgets/radial_percent/radial_percent_widget.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _MovieNameWidget(),
        ),
        _ScoreAndTrailerWidget(),
        _MovieSummaryWidget(),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: _MovieDescriptionWidget(),
        ),
        SizedBox(height: 30),
        _StaffWidget(),
        SizedBox(height: 30),
      ],
    );
  }
}

class _MovieDescriptionWidget extends StatelessWidget {
  const _MovieDescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Washed-up MMA fighter Cole Young, unaware of his heritage, and hunted by Emperor Shang Tsung's best warrior, Sub-Zero, seeks out and trains with Earth's greatest champions as he prepares to stand against the enemies of Outworld in a high stakes battle for the universe.",
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}

class _OverviewWidget extends StatelessWidget {
  const _OverviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Overview',
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage(AppImages.moviePoster)),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: Image(image: AssetImage(AppImages.mortalcombat8)),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: 3,
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Tom Clancy`s Without Remorse ',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(
            text: ' (2021)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class _ScoreAndTrailerWidget extends StatelessWidget {
  const _ScoreAndTrailerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: RadialPercentWidget(
                  child: Text('72'),
                  percent: 0.72,
                  backgroundColor: Color.fromARGB(255, 10, 23, 25),
                  filledColor: Color.fromARGB(255, 37, 203, 103),
                  unfilledColor: Color.fromARGB(255, 25, 54, 31),
                  lineWidth: 3,
                ),
              ),
              SizedBox(width: 10),
              Text('User Score'),
            ],
          ),
        ),
        Container(width: 1, height: 15, color: Colors.grey),
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(Icons.play_arrow),
              Text('Play Trailer'),
            ],
          ),
        ),
      ],
    );
  }
}

class _MovieSummaryWidget extends StatelessWidget {
  const _MovieSummaryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
        child: Text(
          maxLines: 3,
          textAlign: TextAlign.center,
          'R 04/23/2021 (US) 1h 50m Action, Fantasy, Adventure',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class _StaffWidget extends StatelessWidget {
  const _StaffWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const nameStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
    const jobTitleStyle = TextStyle(
      color: Colors.white,
      fontSize: 16,
    );
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Greg Russo', style: nameStyle),
                Text('Screenplay, Story', style: jobTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Greg Russo', style: nameStyle),
                Text('Screenplay, Story', style: jobTitleStyle),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Greg Russo', style: nameStyle),
                Text('Screenplay, Story', style: jobTitleStyle),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Greg Russo', style: nameStyle),
                Text('Screenplay, Story', style: jobTitleStyle),
              ],
            )
          ],
        ),
      ],
    );
  }
}
