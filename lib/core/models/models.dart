class MoviesModel {
  List<SingleMovieModel> moviesList;

  MoviesModel({required this.moviesList});

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
        moviesList: (json["results"] as List)
            .map((movie) => SingleMovieModel.fromJson(movie))
            .toList());
  }
}

class SingleMovieModel {
  int id;
  String title;
  double vote_average;
  bool adult;
  String poster_path;
  String backdrop_path;
  String release_date;
  List<int> genre_ids;
  String overview;

  SingleMovieModel(
      {required this.id,
      required this.title,
      required this.vote_average,
      required this.adult,
      required this.poster_path,
      required this.backdrop_path,
      required this.release_date,
      required this.genre_ids,
      required this.overview});

  factory SingleMovieModel.fromJson(Map<String, dynamic> json) {
    return SingleMovieModel(
        id: json["id"],
        title: json["title"],
        adult: json["adult"],
        backdrop_path: json["backdrop_path"],
        poster_path: json["poster_path"],
        release_date: json["release_date"],
        vote_average: json["vote_average"],
        genre_ids: json["genre_ids"],
        overview: json["overview"]);
  }
}

class Genres {
  List<SingleGenre> genresList;

  Genres({required this.genresList});

  factory Genres.fromJson(Map<String, dynamic> json) {
    return Genres(
        genresList: (json["genres"] as List)
            .map((genre) => SingleGenre.fromJson(genre))
            .toList());
  }
}

class SingleGenre {
  int id;
  String name;

  SingleGenre({required this.id, required this.name});

  factory SingleGenre.fromJson(Map<String, dynamic> json) {
    return SingleGenre(id: json["id"], name: json["name"]);
  }
}
