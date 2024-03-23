import 'package:flutter/material.dart';
import 'package:news/features/home/data/model/category_model/category.dart';
import 'package:news/features/home/presentation/view/category_view.dart';

import '../../manager/category_news_cubit/news_cubit.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          NewsCubit.get(context).updateCategory(category.categoryName);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const CategoryView();
              },
            ),
          );
        },
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill)),
          child: Center(
            child: Text(
              category.categoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
