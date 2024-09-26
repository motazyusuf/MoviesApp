class MovieEntity {
  int? popularId;
  String? popularTitle;
  num? popular_vote_average;
  bool? popularAdult;
  String? popular_poster_path;
  String? popular_backdrop_path;
  String? popular_release_date;
  List<dynamic>? genre_ids;
  String? overview;

  MovieEntity(
      {this.popularId,
      this.popularTitle,
      this.popular_vote_average,
      this.popularAdult,
      this.popular_poster_path,
      this.popular_backdrop_path,
      this.popular_release_date,
      this.genre_ids,
      this.overview});
}
