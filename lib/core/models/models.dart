

class MoviesModel {
  List<SingleMovieModel>? moviesList;

  MoviesModel({this.moviesList});

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
        moviesList: (json["results"] as List)
            .map((movie) => SingleMovieModel.fromJson(movie))
            .toList());
  }
}

class SingleMovieModel {
  int? id;
  String? title;
  num? vote_average;
  bool? adult;
  String? poster_path;
  String? backdrop_path;
  String? release_date;
  List<int>? genre_ids;
  String? overview;

  SingleMovieModel({this.id,
    this.title,
    this.vote_average,
    this.adult,
    this.poster_path,
    this.backdrop_path,
    this.release_date,
    this.genre_ids,
    this.overview});

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
  List<SingleGenre>? genresList;

  Genres({this.genresList});

  factory Genres.fromJson(Map<String, dynamic> json) {
    return Genres(
        genresList: (json["genres"] as List)
            .map((genre) => SingleGenre.fromJson(genre))
            .toList());
  }
}

class SingleGenre {
  int? id;
  String? name;

  SingleGenre({this.id, this.name});

  factory SingleGenre.fromJson(Map<String, dynamic> json) {
    return SingleGenre(id: json["id"], name: json["name"]);
  }
}
