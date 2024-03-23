import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news/features/home/data/model/article_model/article_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utilies/api_service.dart';

part 'news_state.dart';

// class NewsCubit extends Cubit<NewsState> {
//   NewsCubit() : super(NewsInitial());

//   static NewsCubit get(context) => BlocProvider.of(context);
//   ArticleModel? articleModel;
//   void getNewsData({required String category}) {
//     emit(NewsLoading());
//      Api().getData(
//       endPoint:
//           'country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category',
//     ).then((value) {
//       articleModel = ArticleModel.fromJson(value.data);
//       print('=============================>>>>>>>>>>${articleModel}');
//       emit(NewsSuccess());
//     }).catchError((onError) {
//       print(onError.toString());
//       emit(NewsError());
//     });
//   }
// }


class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);
  ArticleModel? articleModel;
  String currentCategory = 'general'; 

  void getNewsData() {
    emit(NewsLoading());
    Api().getData(
      endPoint: 'country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$currentCategory',
    ).then((value) {
      articleModel = ArticleModel.fromJson(value.data);
      emit(NewsSuccess());
    }).catchError((onError) {
      emit(NewsError());
    });
  }

  void updateCategory(String newCategory) {
    currentCategory = newCategory;
    getNewsData();
  }
}
