import 'package:flutter/material.dart';
import 'package:irc4u/model/model_movie.dart';
import 'package:irc4u/widget/box_slider.dart';
import 'package:irc4u/widget/carousel_slider.dart';
import 'package:irc4u/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': 'League Of Legends',
      'keyword': 'MOBA',
      'poster': 'leagueOfLegends.jpg',
      'likes': true,
    }),
    Movie.fromMap({
      'title': 'Dead By Daylight',
      'keyword': 'Survival Horror',
      'poster': 'DBD.jpg',
      'likes': false,
    }),
    Movie.fromMap({
      'title': 'Apex Legends',
      'keyword': 'Battle Royale',
      'poster': 'apexLegends.jpg',
      'likes': false,
    }),
    Movie.fromMap({
      'title': 'PUBG',
      'keyword': 'Battle Royale',
      'poster': 'PUBG.jpg',
      'likes': false,
    }),
    Movie.fromMap({
      'title': 'For Honor',
      'keyword': 'Action Adventure, General',
      'poster': 'ForHonor.jpg',
      'likes': true,
    }),
    Movie.fromMap({
      'title': 'Heroes Of The Storm',
      'keyword': 'Action, Strategy, Real-Time, General, MOBA',
      'poster': 'HOTS.jpg',
      'likes': true,
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        CircleSlider(
          movies: movies,
        ),
        BoxSlider(
          movies: movies,
        ),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'images/logosample.png',
            fit: BoxFit.contain,
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '게임',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '장르별',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '내가 찜한 게임',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
