import 'package:movies_app/core/models/models.dart';
import 'package:movies_app/home/domain/entities/new_release_entity.dart';
import 'package:movies_app/home/domain/entities/popular_entity.dart';
import 'package:movies_app/home/domain/entities/recommended_entity.dart';

class Mapper {
  static NewReleaseEntity toNewReleaseEntity(SingleMovieModel movie) {
    return NewReleaseEntity(
        newReleaseId: movie.id ?? 011,
        newRelease_poster_path: movie.poster_path ?? "Default");
  }

  static PopularEntity toPopularEntity(SingleMovieModel movie) {
    return PopularEntity(
        popular_backdrop_path: movie.backdrop_path ?? "Default",
        popular_poster_path: movie.poster_path ?? "Default",
        popular_release_date: movie.release_date ?? "Default",
        popular_vote_average: movie.vote_average ?? 5,
        popularAdult: movie.adult ?? false,
        popularId: movie.id ?? 011,
        popularTitle: movie.title ?? "Default");
  }

  static RecommendedEntity toRecommendedEntity(SingleMovieModel movie) {
    return RecommendedEntity(
        recommended_poster_path: movie.poster_path ?? "Default",
        recommended_release_date: movie.release_date ?? "Default",
        recommended_vote_average: movie.vote_average ?? 5,
        recommendedId: movie.id ?? 011,
        recommendedTitle: movie.title ?? "Default");
  }
}
