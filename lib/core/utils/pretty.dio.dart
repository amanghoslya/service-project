import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dwelleasy_ghana/core/utils/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Dio callDio() {
  final dio = Dio();
  dio.interceptors.add(
    PrettyDioLogger(
      requestBody: true,
      responseBody: true,
      requestHeader: false,
      responseHeader: false,
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        var box = Hive.box("userbox");
        var token = box.get("token");
        log("Token From Hive :- ${token ?? "NO Token From Hive"}");
        options.headers.addAll({
          "Content-type": "application/json",
          // 'Accept': 'application/json',
          if (token != null) "Authorization": "Bearer $token",
        });
        handler.next(options);
      },
      onResponse: (response, handler) {
        final data = response.data;
        if (data is Map<String, dynamic>) {
          final message = data["message"];
          final error = data["error"];
          if (message != null) {
            log("API Message :- $message");
          }
          if (error == true) {
            ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
              SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                behavior: SnackBarBehavior.floating,
                duration: const Duration(seconds: 3),
                margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
                content: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 14.h,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    gradient: const LinearGradient(
                      colors: [Color(0xffD32F2F), Color(0xffB71C1C)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.18),
                        blurRadius: 12,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 42.h,
                        width: 42.w,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.error_outline_rounded,
                            color: Colors.white,
                            size: 24.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Error",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.3,
                                height: 1,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              message,
                              style: GoogleFonts.inter(
                                color: Colors.white.withOpacity(0.95),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w400,
                                height: 1.h,
                                letterSpacing: -0.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );

            return handler.reject(
              DioException(
                requestOptions: response.requestOptions,
                response: response,
                error: message,
                type: DioExceptionType.badResponse,
              ),
            );
          }
        }
        handler.next(response);
      },
      onError: (error, handler) {
        handler.next(error);
      },
    ),
  );
  return dio;
}
