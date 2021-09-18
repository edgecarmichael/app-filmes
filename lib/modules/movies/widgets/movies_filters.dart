import 'package:app_filmes/modules/movies/movies_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'filter_tag.dart';
import 'package:flutter/material.dart';

class MoviesFilters extends GetView<MoviesController> {
  const MoviesFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Obx(() {
          return Row(
            children: controller.genres
                .map(
                  (g) => FilterTag(
                    model: g,
                    onPressed: () {},
                    selected: false,
                  ),
                )
                .toList(),
          );
        }),
      ),
    );
  }
}
