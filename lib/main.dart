import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/utilies/api_service.dart';
import 'package:news/core/utilies/app_routers.dart';
import 'package:news/features/home/presentation/manager/category_news_cubit/news_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Api.init();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getNewsData(),
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
