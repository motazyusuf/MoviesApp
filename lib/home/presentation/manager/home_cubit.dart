import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/failure/failure.dart';
import 'package:movies_app/core/services/web_services.dart';
import 'package:movies_app/home/data/data_sources/home_data_source.dart';
import 'package:movies_app/home/data/repositories_imp/home_repositories_imp.dart';
import 'package:movies_app/home/domain/repositories/home_repository.dart';
import 'package:movies_app/home/domain/use_cases/new_release_use_case.dart';
import 'package:movies_app/home/domain/use_cases/popular_use_case.dart';
import 'package:movies_app/home/domain/use_cases/recommended_use_case.dart';

import '../../../core/entities/movie_entity.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);

  WebServices _webServices = WebServices();
  late PopularUseCase _popularUseCase;
  late RecommenedUseCase _recommenedUseCase;
  late NewReleaseUseCase _newReleaseUseCase;
  late HomeRepository _homeRepo;
  late HomeDataSource _homeDataSource;
  List<MovieEntity> popularMoviesList = [];
  List<MovieEntity> recommendedMoviesList = [];
  List<MovieEntity> newReleaseMoviesList = [];

  Future<void> popularMovies() async {
    _homeDataSource = OnlineHomeDataSource(_webServices.dio);
    _homeRepo = HomeRepositoriesImp(_homeDataSource);
    _popularUseCase = PopularUseCase(_homeRepo);
    final result = await _popularUseCase.execute();

    return result.fold((fail) {
      emit(FailedData(fail));
    }, (data) {
      print("I am here");
      popularMoviesList = data;
      emit(PopularDataLoaded(popularMoviesList));
    });
  }

  Future<void> recommendedMovies() async {
    _homeDataSource = OnlineHomeDataSource(_webServices.dio);
    _homeRepo = HomeRepositoriesImp(_homeDataSource);
    _recommenedUseCase = RecommenedUseCase(_homeRepo);
    final result = await _recommenedUseCase.execute();
    return result.fold((fail) {
      emit(FailedData(fail));
    }, (data) {
      recommendedMoviesList = data;
      emit(RecommendedDataLoaded(recommendedMoviesList));
    });
  }

  Future<void> newReleasedMovies() async {
    _homeDataSource = OnlineHomeDataSource(_webServices.dio);
    _homeRepo = HomeRepositoriesImp(_homeDataSource);
    _newReleaseUseCase = NewReleaseUseCase(_homeRepo);
    final result = await _newReleaseUseCase.execute();

    return result.fold((fail) {
      emit(FailedData(fail));
    }, (data) {
      newReleaseMoviesList = data;
      emit(NewReleaseDataLoaded(newReleaseMoviesList));
    });
  }
}
