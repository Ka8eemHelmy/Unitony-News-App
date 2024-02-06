import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/model/news/new_model.dart';
import 'package:news/view/components/widgets/toast_message.dart';
import 'package:news/view_model/data_source/network/dio_helper.dart';
import 'package:news/view_model/data_source/network/end_points.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of<NewsCubit>(context);

  TextEditingController firstSearchController = TextEditingController();
  TextEditingController secondSearchController = TextEditingController();

  List<Articles> news = [];

  Future<void> getNews({required String search}) async {
    emit(GetNewsLoadingState());
    await DioHelper.get(
      url: EndPoints.everyThing,
      queryParameters: {
        'q': search,
        'apiKey': EndPoints.apiKey,
      },
    ).then((value) {
      news = [];
      for (var i in value.data['articles']) {
        news.add(Articles.fromJson(i));
      }
      emit(GetNewsSuccessState());
    }).catchError((error) {
      if (error is DioException) {
        showToast(message: error.response?.data?['message'].toString() ?? 'Error on Get News');
      }
      emit(GetNewsErrorState());
    });
  }
}
