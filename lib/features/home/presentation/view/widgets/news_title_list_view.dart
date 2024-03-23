import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/presentation/manager/category_news_cubit/news_cubit.dart';

import 'news_title.dart';

class NewslistView extends StatelessWidget {
  const NewslistView({
    super.key,
    required this.physics,
  });
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is NewsLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is NewsSuccess) {
          return ListView.builder(
            itemCount: NewsCubit.get(context).articleModel?.articles!.length,
            physics: physics,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(
                    article:
                        NewsCubit.get(context).articleModel!.articles![index]),
              );
            },
          );
        } else {
          return const Text('Try Again');
        }
      },
    );
  }
}
