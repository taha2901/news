import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/view/widgets/news_title_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewslistView(
        physics: BouncingScrollPhysics(),
      ),
    );
  }
}
