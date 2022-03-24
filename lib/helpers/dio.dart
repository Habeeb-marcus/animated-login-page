// import 'dart:io';

// import 'package:dio/adapter.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:dio/dio.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class DioClient {
//   Dio dio = Dio();
//   Dio dioAccessToken = Dio();
//   Dio dioInternal = Dio();
//   var prefss;
//   String _accessToken = '';

//   var SharedPreferences;

//   Future initializeVariables() async {
//     prefss = await SharedPreferences.getInstance();
//     _accessToken = prefss.getString('token') ??
//         'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXlsb2FkIjp7ImVtYWlsIjoiYXNxdWFyZUBnbWFpbC5jb20iLCJkZXZpY2UiOiJ0ZXN0In0sImlhdCI6MTY0NTQ4NjQ5MSwiZXhwIjoxNjQ2NzgyNDkxfQ.PiYVx3htukaq-4qle8EnHNGztCNGHX2-0rKh2XQyafs';
//     print(_accessToken);
//     BaseOptions options = BaseOptions(
//         baseUrl: 'https://med-backend-api-stagging.herokuapp.com/api/v1/',
//         //  baseUrl: DotEnv().env['API_URL'] ?? '',

//         followRedirects: false,
//         validateStatus: (status) {
//           return status! < 500;
//         },
//         headers: {
//           "Content-Type": "application/json",
//           "Connection": 'keep-alive',
//         });
//     BaseOptions tokenOptions = BaseOptions(
//         baseUrl: 'https://med-backend-api-stagging.herokuapp.com/api/v1/',
//         followRedirects: false,
//         validateStatus: (status) {
//           return status! < 500;
//         },
//         headers: {
//           "Content-Type": "application/json",
//           "Connection": 'keep-alive',
//           'Authorization': '$_accessToken',
//         });
//     dio = Dio(options);
//     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     // print(tokenOptions.headers);
//     dioAccessToken = Dio(tokenOptions);
//     (dioAccessToken.httpClientAdapter as DefaultHttpClientAdapter)
//         .onHttpClientCreate = (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//   }
// }
