import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of<NewsCubit>(context);
}
