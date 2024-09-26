part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchDataLoaded extends SearchState {
  final List<MovieEntity> searchMovies;

  SearchDataLoaded(this.searchMovies);
}

final class FailedData extends SearchState {
  final Failure failure;

  FailedData(this.failure);
}
