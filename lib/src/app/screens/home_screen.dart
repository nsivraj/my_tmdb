import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/details/module.dart';
import '../../features/popular_movies/module.dart';
import '../routes.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('MyTMDB')),
        body: Column(
          children: [
            PopularMoviesWidget(
              onItemPressed: (movie) => context.router.navigate(
                DetailsRoute(
                  id: movie.id,
                  detailsType: DetailsType.movie,
                  initialTitle: movie.title,
                ),
              ),
            ),
          ],
        ),
      );
}
