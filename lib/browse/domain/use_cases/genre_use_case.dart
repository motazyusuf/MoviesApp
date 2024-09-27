import 'package:dartz/dartz.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';
import 'package:movies_app/browse/domain/repositories/genre_repository.dart';

import '../../../core/failure/failure.dart';

class GenreUseCase {
  GenreRepository genreRepo;

  GenreUseCase(this.genreRepo);

  Future<Either<Failure, List<GenreEntity>>> excute() async {
    return await genreRepo.getGenres();
  }
}
