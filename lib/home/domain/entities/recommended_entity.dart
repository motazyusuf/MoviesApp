class RecommendedEntity {
  int? recommendedId;
  String? recommendedTitle;
  num? recommended_vote_average;
  String? recommended_poster_path;
  String? recommended_release_date;

  RecommendedEntity(
      {this.recommendedId,
      this.recommendedTitle,
      this.recommended_vote_average,
      this.recommended_poster_path,
      this.recommended_release_date});
}
