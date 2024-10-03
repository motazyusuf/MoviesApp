class MovieEntity {
  String? fireStoreID;
  int? movieId;
  String? movieTitle;
  num? movie_vote_average;
  bool? movieAdult;
  String? movie_poster_path;
  String? movie_backdrop_path;
  String? movie_release_date;
  List<dynamic>? genre_ids;
  String? overview;

  MovieEntity(
      {this.movieId,
      this.movieTitle,
      this.movie_vote_average,
      this.movieAdult,
      this.movie_poster_path,
      this.movie_backdrop_path,
      this.movie_release_date,
      this.genre_ids,
      this.overview,
      this.fireStoreID});

  factory MovieEntity.fromFireStore(Map<String, dynamic> json) => MovieEntity(
      fireStoreID: json["fireStoreID"],
      movieId: json["id"],
      movieTitle: json["title"],
      movie_vote_average: json["rating"],
      movieAdult: json["adult"],
      movie_poster_path: json["poster"],
      movie_backdrop_path: json["cover"],
      movie_release_date: json["date"],
      genre_ids: json["genre"],
      overview: json["overview"]);

  Map<String, dynamic> toFireStore() {
    return {
      "fireStoreID": fireStoreID,
      "id": movieId,
      "title": movieTitle,
      "rating": movie_vote_average,
      "adult": movieAdult,
      "poster": movie_poster_path,
      "cover": movie_backdrop_path,
      "date": movie_release_date,
      "genre": genre_ids,
      "overview": overview
    };
  }
}
