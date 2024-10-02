import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/movie_entities/movie_entity.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/services/web_services.dart';
import '../../../data/data_sources/genre_data_source.dart';
import '../../../data/repositories_imp/genre_repository_imp.dart';
import '../../../domain/repositories/genre_repository.dart';
import '../../../domain/use_cases/genre_movies_use_case.dart';

part 'genre_movies_state.dart';

class GenreMoviesCubit extends Cubit<GenreMoviesState> {
  GenreMoviesCubit(this.genre) : super(GenreMoviesInitial());
  String genre;
  List<MovieEntity> genreMoviesList = [];
  late GenreMoviesUseCase _genreMoviesUseCase;
  late GenreRepository _genreRepository;
  late GenreDataSource _genreDataSource;
  late WebServices _webServices;

  Future<void> genreMovies() async {
    _webServices = WebServices();
    _genreDataSource =
        OnlineGenreDataSource(dio: _webServices.dio, genre: genre);
    _genreRepository = GenreRepositoryImp(_genreDataSource);
    _genreMoviesUseCase = GenreMoviesUseCase(_genreRepository);

    emit(GenreMoviesDataLoading());
    final result = await _genreMoviesUseCase.excute();

    return result.fold((fail) {
      print(fail.errorMessage);
      emit(FailedData(fail));
    }, (data) {
      print("I am data -> ${data}");
      genreMoviesList = data;
      emit(GenreMoviesDataLoaded(genreMoviesList));
    });
  }
}
