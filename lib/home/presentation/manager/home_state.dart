part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class RecommendedDataLoaded extends HomeState {
  final List<RecommendedEntity> recommendedMovies;

  RecommendedDataLoaded(this.recommendedMovies);
}

final class NewReleaseDataLoaded extends HomeState {
  final List<NewReleaseEntity> newReleasedMovies;

  NewReleaseDataLoaded(this.newReleasedMovies);
}

final class PopularDataLoaded extends HomeState {
  final List<PopularEntity> popularMovies;

  PopularDataLoaded(this.popularMovies);
}

final class FailedData extends HomeState {
  final Failure failure;

  FailedData(this.failure);
}
