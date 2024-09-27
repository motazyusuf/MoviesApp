class GenresModel {
  List<SingleGenreModel>? genresList;

  GenresModel({this.genresList});

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(
        genresList: (json["genres"] as List)
            .map((genre) => SingleGenreModel.fromJson(genre))
            .toList());
  }
}

class SingleGenreModel {
  int? id;
  String? name;

  SingleGenreModel({this.id, this.name});

  factory SingleGenreModel.fromJson(Map<String, dynamic> json) {
    return SingleGenreModel(id: json["id"], name: json["name"]);
  }
}
