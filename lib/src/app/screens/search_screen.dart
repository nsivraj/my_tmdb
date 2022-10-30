import 'package:auto_route/auto_route.dart';
import 'package:dfunc/dfunc.dart';
import 'package:flutter/material.dart';

import '../../features/details/module.dart';
import '../../features/search/module.dart';
import '../routes.gr.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Search')),
        body: SearchWidget(
          onItemPressed: (item) => context.router.navigate(
            DetailsRoute(
              id: item.id,
              detailsType: item.map(
                movie: always(DetailsType.movie),
                tvShow: always(DetailsType.tv),
              ),
              initialTitle: item.title,
            ),
          ),
        ),
      );
}
