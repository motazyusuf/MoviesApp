part of 'genre_movies_cubit.dart';

@immutable
sealed class GenreMoviesState {}

final class GenreMoviesInitial extends GenreMoviesState {}

final class GenreMoviesDataLoading extends GenreMoviesState {}

final class GenreMoviesDataLoaded extends GenreMoviesState {
  final List<MovieEntity> movies;

  GenreMoviesDataLoaded(this.movies);
}

final class FailedData extends GenreMoviesState {
  final Failure failure;

  FailedData(this.failure);
}
