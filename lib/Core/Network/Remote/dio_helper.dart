// import 'package:dartz/dartz.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';
//
// import '../../Error/failure.dart';
// import '../Local/cache_helper.dart';
// import 'constant.dart';
//
// class DioHelper {
//   static Dio? dio;
//
//   static init() {
//     dio = Dio(
//       BaseOptions(
//         baseUrl: url,
//         receiveDataWhenStatusError: true,
//       ),
//     )..interceptors.addAll([
//         if (kDebugMode)
//           PrettyDioLogger(
//             requestHeader: true,
//             requestBody: true,
//             responseBody: true,
//             responseHeader: false,
//             error: true,
//             compact: true,
//             maxWidth: 89,
//           )
//       ]);
//   }
//
//   static Future<Either<Failure, Map<String, dynamic>>> getData({
//     required String endPoint,
//     String? refreshToken,
//     Map<String, dynamic>? query,
//   }) async {
//     dio!.options.headers = {
//       "Accept": "application/json",
//       'Authorization': 'Bearer ${CacheHelper.get(key: 'token')}',
//     };
//     final response = await dio!.get(
//       endPoint,
//       queryParameters: query,
//     );
//     if (response.data['status'] == 1) {
//       //debugPrint(response.data['data']);
//       // log(response.data['data'].toString(), name: url + endPoint);
//       return Right(response.data);
//     } else {
//       debugPrint(response.data['message']);
//       return Left(ServerFailure(response.data['message']));
//     }
//   }
//
//   static Future<Either<Failure, Map<String, dynamic>>> patchData({
//     required String? endPoint,
//     required dynamic data,
//   }) async {
//     dio!.options.headers = {
//       "Accept": "application/json",
//       'Authorization': 'Bearer ${CacheHelper.get(key: 'token')}',
//     };
//     final response = await dio!.patch(
//       '$endPoint',
//       data: data,
//     );
//     if (response.data['status'] == 1) {
//       //debugPrint(response.data['data']);
//       // log(response.data['data'].toString(), name: url + endPoint!);
//
//       return Right(response.data);
//     } else {
//       debugPrint(response.data['message']);
//       return Left(ServerFailure(response.data['message']));
//     }
//   }
//
//   static Future<Either<Failure, Map<String, dynamic>>> postData({
//     required String endPoint,
//     dynamic data,
//   }) async {
//     dio!.options.headers = {
//       "Accept": "application/json",
//       'Authorization': 'Bearer ${CacheHelper.get(key: 'token')}',
//     };
//
//     final response = await dio!.post(
//       '$url$endPoint',
//       data: data,
//     );
//     if (response.data['status'] == 1) {
//       //debugPrint(response.data);
//       // log(response.data['data'].toString(), name: url + endPoint);
//
//       return Right(response.data);
//     } else {
//       debugPrint(response.data['message']);
//       return Left(ServerFailure(response.data['message']));
//     }
//   }
//
//   static Future<Either<Failure, Map<String, dynamic>>> putData({
//     required String endPoint,
//     dynamic data,
//   }) async {
//     dio!.options.headers = {
//       "Accept": "application/json",
//       'Authorization': 'Bearer ${CacheHelper.get(key: 'token')}',
//     };
//
//     final response = await dio!.put(
//       '$url$endPoint',
//       data: data,
//     );
//
//     if (response.data['status'] == 1) {
//       //debugPrint(response.data['data']);
//       // log(response.data['data'].toString(), name: url + endPoint);
//
//       return Right(response.data);
//     } else {
//       debugPrint(response.data['message']);
//       return Left(ServerFailure(response.data['message']));
//     }
//   }
//
//   static Future<Either<Failure, Map<String, dynamic>>> deleteData({
//     required String endPoint,
//     dynamic data,
//   }) async {
//     dio!.options.headers = {
//       "Accept": "application/json",
//       'Authorization': 'Bearer ${CacheHelper.get(key: 'token')}',
//     };
//     final response = await dio!.delete(
//       '$url$endPoint',
//       data: data,
//     );
//
//     if (response.data['status'] == 1) {
//       //debugPrint(response.data['data']);
//       // log(response.data['data'].toString(), name: url + endPoint);
//       return Right(response.data);
//     } else {
//       debugPrint(response.data['message']);
//       return Left(ServerFailure(response.data['message']));
//     }
//   }
// }
