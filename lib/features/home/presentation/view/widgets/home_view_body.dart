import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/view/widgets/news_title_list_view.dart';

import 'category_list_view.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(
                height: 20,
              ),
              CategoryListView(),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: NewslistView(
            physics: NeverScrollableScrollPhysics(),
          ),
        ),
      ],
    );
  }
}
