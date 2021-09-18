import 'package:app_filmes/modules/movies/widgets/movies_group.dart';

import 'widgets/movies_filters.dart';
import 'widgets/movies_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(
        children: [
          MoviesHeader(),
          MoviesFilters(),
          MoviesGroup(
            title: 'Mais Populares',
          ),
          MoviesGroup(
            title: 'Top Filmes',
          ),
        ],
      ),
    );
  }
}
