import 'package:unidection/core/model/major.dart';
import 'package:unidection/core/model/university.dart';

class RecommendationResult {
  final University? university;
  final Major? major;

  RecommendationResult({
    this.university,
    this.major,
  });

  factory RecommendationResult.fromJson(Map<String, dynamic> json) {
    return RecommendationResult(
      university: json['university'] != null
          ? University.fromJson(json['university'])
          : null,
    );
  }
}