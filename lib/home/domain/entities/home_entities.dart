class PopularEntity {
  int id;
  String title;
  num vote_average;
  bool adult;
  String poster_path;
  String backdrop_path;
  String release_date;

  PopularEntity(
      {required this.id,
      required this.title,
      required this.vote_average,
      required this.adult,
      required this.poster_path,
      required this.backdrop_path,
      required this.release_date});
}

class NewReleaseEntity {
  int id;
  String poster_path;

  NewReleaseEntity({required this.poster_path, required this.id});
}

class RecommendedEntity {
  int id;
  String title;
  num vote_average;
  String poster_path;
  String release_date;

  RecommendedEntity(
      {required this.id,
      required this.title,
      required this.vote_average,
      required this.poster_path,
      required this.release_date});
}
