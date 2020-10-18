class Movie {
  final String title;
  final String keyword;
  final String poster;
  final bool likes;

  Movie.fromMap(Map<String, dynamic> map)
      : title = map['title'],
        keyword = map['keyword'],
        poster = map['poster'],
        likes = map['like'];

  @override
  String toString() => "$keyword";
}
