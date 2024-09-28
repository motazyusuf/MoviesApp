part of 'genre_cubit.dart';

@immutable
sealed class GenreState {}

final class GenreInitial extends GenreState {}

final class GenresDataLoaded extends GenreState {
  final List<GenreEntity> genres;

  GenresDataLoaded(this.genres);
}

final class FailedData extends GenreState {
  final Failure failure;

  FailedData(this.failure);
}
