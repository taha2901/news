import 'package:flutter/material.dart';
import 'package:news/features/home/presentation/view/widgets/news_title_list_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key,required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: NewslistView(
        physics: BouncingScrollPhysics(),
        category: category,
      ),
    );
  }
}
