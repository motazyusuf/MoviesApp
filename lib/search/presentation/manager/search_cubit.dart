import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/services/web_services.dart';
import 'package:movies_app/search/data/data_sources/search_data_source.dart';
import 'package:movies_app/search/data/repositories_imp/search_repositories_imp.dart';
import 'package:movies_app/search/domain/repositories/search_repository.dart';
import 'package:movies_app/search/domain/use_cases/search_use_case.dart';

import '../../../core/entities/movie_entity.dart';
import '../../../core/failure/failure.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.query) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  WebServices _webServices = WebServices();
  String query;
  late SearchUseCase _searchUseCase;
  late SearchRepository _searchRepository;
  late SearchDataSource _searchDataSource;
  List<MovieEntity> searchMoviesList = [];

  Future<void> searchMovies() async {
    _searchDataSource =
        OnlineSearchDataSource(dio: _webServices.dio, query: query);
    _searchRepository = SearchRepositoriesImp(_searchDataSource);
    _searchUseCase = SearchUseCase(_searchRepository);
    final result = await _searchUseCase.execute();

    return result.fold((fail) {
      emit(FailedData(fail));
    }, (data) {
      searchMoviesList = data;
      emit(SearchDataLoaded(searchMoviesList));
    });
  }
}
