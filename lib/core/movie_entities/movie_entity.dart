class MovieEntity {
  int? movieId;
  String? movieTitle;
  num? movie_vote_average;
  bool? movieAdult;
  String? movie_poster_path;
  String? movie_backdrop_path;
  String? movie_release_date;
  List<dynamic>? genre_ids;
  String? overview;

  MovieEntity({this.movieId,
    this.movieTitle,
    this.movie_vote_average,
    this.movieAdult,
    this.movie_poster_path,
    this.movie_backdrop_path,
    this.movie_release_date,
      this.genre_ids,
      this.overview});
}
