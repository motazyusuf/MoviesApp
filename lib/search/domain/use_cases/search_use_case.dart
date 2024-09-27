import 'package:dartz/dartz.dart';
import 'package:movies_app/search/domain/repositories/search_repository.dart';

import '../../../core/entities/movie_entity.dart';
import '../../../core/failure/failure.dart';

class SearchUseCase {
  SearchUseCase(this.searchRepo);

  final SearchRepository searchRepo;

  Future<Either<Failure, List<MovieEntity>>> execute() async {
    return await searchRepo.getMovies();
  }
}
