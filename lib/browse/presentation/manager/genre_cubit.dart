import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/browse/data/data_sources/genre_data_source.dart';
import 'package:movies_app/browse/data/repositories_imp/genre_repository_imp.dart';
import 'package:movies_app/browse/domain/entities/genre_entity.dart';
import 'package:movies_app/browse/domain/repositories/genre_repository.dart';
import 'package:movies_app/browse/domain/use_cases/genre_use_case.dart';
import 'package:movies_app/core/services/web_services.dart';

import '../../../core/failure/failure.dart';

part 'genre_state.dart';

class GenreCubit extends Cubit<GenreState> {
  GenreCubit() : super(GenreInitial());
  List<GenreEntity> genresList = [];
  late GenreUseCase _genreUseCase;
  late GenreRepository _genreRepository;
  late GenreDataSource _genreDataSource;
  late WebServices _webServices;

  static GenreCubit get(context) => BlocProvider.of(context);

  Future<void> movieGenres() async {
    _webServices = WebServices();
    _genreDataSource = OnlineGenreDataSource(_webServices.dio);
    _genreRepository = GenreRepositoryImp(_genreDataSource);
    _genreUseCase = GenreUseCase(_genreRepository);
    final result = await _genreUseCase.excute();

    return result.fold((fail) {
      print("I am fail");
      print(fail.errorMessage);
      print("I am fail");
      emit(FailedData(fail));
    }, (data) {
      print("I am data -> ${data}");
      genresList = data;
      emit(GenresDataLoaded(genresList));
    });
  }
}
