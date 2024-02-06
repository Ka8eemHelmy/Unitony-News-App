import 'package:dio/dio.dart';
import 'end_points.dart';

class DioHelper {
  static late Dio dio;

  static Future init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> get({
    required String url,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onReceiveProgress,
    String? token,
    String? lang,
    Options? options,
  }) async {
    try {
      dio.options.headers = {
        'api_access_token': token ?? '',
      };
      final Response response = await dio.get(
        url,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
        options: options,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> post({
    required String url,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
    FormData? formData,
    String? token,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      dio.options.headers = {
        'api_access_token': token ?? '',
      };
      final Response response = await dio.post(
        url,
        data: formData ?? data,
        queryParameters: query,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> put({
    required String url,
    required Map<String, dynamic> data,
    FormData? formData,
    String? token,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      dio.options.headers = {
        'api_access_token': token ?? '',
      };
      final Response response = await dio.put(
        url,
        data: formData ?? data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }

  static Future<Response> patch({
    required String url,
    required Map<String, dynamic> data,
    required String token,
    bool files = false,
  }) async {
    dio.options.headers = {
      'api_access_token': token,
    };
    return await dio.patch(
      url,
      data: data,
    );
  }

  static Future<Response> delete({
    required String url,
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    String? token,
  }) async {
    try {
      dio.options.headers = {
        'api_access_token': '$token',
      };
      final Response response = await dio.delete(
        url,
        queryParameters: params,
        data: data,
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
