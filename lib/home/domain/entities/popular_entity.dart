class PopularEntity {
  int? popularId;
  String? popularTitle;
  num? popular_vote_average;
  bool? popularAdult;
  String? popular_poster_path;
  String? popular_backdrop_path;
  String? popular_release_date;

  PopularEntity(
      {this.popularId,
      this.popularTitle,
      this.popular_vote_average,
      this.popularAdult,
      this.popular_poster_path,
      this.popular_backdrop_path,
      this.popular_release_date});
}
