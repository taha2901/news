import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/view/widgets/news_title_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        child: NewslistView(
          physics: BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
