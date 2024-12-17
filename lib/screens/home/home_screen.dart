import 'package:af_exam_1/controller/movie_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late MovieController movieR;
  late MovieController movieW;
  @override
  Widget build(BuildContext context) {
    movieR = Provider.of<MovieController>(context, listen: true);
    movieW = Provider.of<MovieController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: movieW.movieData == null
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              itemCount: movieW.movies.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Container(
                  child: Text('${movieW.movies[index].data?.mainSearch}'),
                );
              },
            ),
    );
  }
}
