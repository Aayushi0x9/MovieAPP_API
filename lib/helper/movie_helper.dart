import 'dart:convert';

import 'package:af_exam_1/model/movie_model.dart';
import 'package:http/http.dart' as http;

class Helper {
  Future<MovieModel?> fetchMovies([String? search]) async {
    String link = "https://imdb-com.p.rapidapi.com/search?searchTerm=$search";
    http.Response res = await http.get(Uri.parse(link), headers: {
      "x-rapidapi-host": "imdb-com.p.rapidapi.com",
      "x-rapidapi-key": "dd1742fe7cmsh4ce3393b3c5e582p124dbcjsn44b223f06aae"
    });
    if (res.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(res.body);

      return MovieModel.fromMap(data);
    }

    return null;
  }
}
