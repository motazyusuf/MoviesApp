class PopularMoviesModel {
  List<PopularMovie> popularMoviesList;

  PopularMoviesModel({required this.popularMoviesList});

  factory PopularMoviesModel.fromJson(Map<String, dynamic> json) {
    return PopularMoviesModel(
        popularMoviesList: (json["results"] as List)
            .map((movie) => PopularMovie.fromJson(movie))
            .toList());
  }
}

class PopularMovie {
  int id;
  String title;
  double vote_average;
  bool adult;
  String poster_path;
  String backdrop_path;
  String release_date;

  PopularMovie(
      {required this.id,
      required this.title,
      required this.vote_average,
      required this.adult,
      required this.poster_path,
      required this.backdrop_path,
      required this.release_date});

  factory PopularMovie.fromJson(Map<String, dynamic> json) {
    return PopularMovie(
        id: json["id"],
        title: json["title"],
        adult: json["adult"],
        backdrop_path: json["backdrop_path"],
        poster_path: json["poster_path"],
        release_date: json["release_date"],
        vote_average: json["vote_average"]);
  }
}
