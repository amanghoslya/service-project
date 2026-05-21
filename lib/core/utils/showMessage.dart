import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void showSuccessMessage({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
      duration: const Duration(seconds: 2),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: AppColors.buttonBg,
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: AppColors.buttonText, size: 22.sp),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                message,
                style: GoogleFonts.inter(
                  color: AppColors.buttonText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.3,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

void showErrorMessage({
  required BuildContext context,
  required String message,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 20.h),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: const Color(0xffB40A0A),
          borderRadius: BorderRadius.circular(14.r),
        ),
        child: Row(
          children: [
            Icon(Icons.error, color: Colors.white, size: 22.sp),
            SizedBox(width: 10.w),
            Expanded(
              child: Text(
                message,
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.3,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
