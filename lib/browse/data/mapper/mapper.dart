import 'package:movies_app/browse/data/models/genre_model.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';

class Mapper {
  static GenreEntity toGenreEntity(SingleGenreModel genre) {
    return GenreEntity(
        genreName: genre.name ?? "Default", genreID: genre.id ?? 011);
  }
}
