import 'package:flutter/material.dart';
import 'package:news/view_model/data_source/network/dio_helper.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

