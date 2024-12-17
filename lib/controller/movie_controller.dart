import 'package:af_exam_1/helper/movie_helper.dart';
import 'package:af_exam_1/model/movie_model.dart';
import 'package:flutter/material.dart';

class MovieController with ChangeNotifier {
  List<MovieModel> movies = [];
  MovieController() {
    getMovies();
  }
  MovieModel? movieData;

  Future<void> getMovies([String search = 'titanic']) async {
    Helper helper = Helper();
    movieData = await helper.fetchMovies(search);
    print('controller========$movieData');
    movies = movieData!.data!.mainSearch.edges.cast<MovieModel>();
    notifyListeners();
  }
}
