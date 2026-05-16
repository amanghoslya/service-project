import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Leavestatusscreen extends StatefulWidget {
  const Leavestatusscreen({super.key});

  @override
  State<Leavestatusscreen> createState() => _LeavestatusscreenState();
}

class _LeavestatusscreenState extends State<Leavestatusscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Leave Status",
              style: GoogleFonts.outfit(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.buttonBg,
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 7.h),
            Text(
              "Track your leave request updates",
              style: GoogleFonts.parkinsans(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.buttonBg,
                letterSpacing: -0.4,
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 44.h,
              width: 44.w,
              padding: EdgeInsets.only(left: 5.w),
              decoration: BoxDecoration(
                color: AppColors.buttonBg,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.buttonText,
                  size: 15.sp,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.w, top: 20.h, bottom: 20.h),
              decoration: BoxDecoration(
                color: Color(0xff34383D),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leave Request - 20 Apr 2025",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.5,
                    ),
                  ),
                  SizedBox(height: 11.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reason:",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        TextSpan(
                          text: " Personal Work",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.h),
                  Container(
                    height: 22.h,
                    width: 59.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 82),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: Text(
                        "Pending",
                        style: GoogleFonts.outfit(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF8BD00),
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.w, top: 20.h, bottom: 20.h),
              decoration: BoxDecoration(
                color: Color(0xff34383D),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leave Request - 15 Apr 2025",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.5,
                    ),
                  ),
                  SizedBox(height: 11.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reason:",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        TextSpan(
                          text: " Family Function",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.h),
                  Container(
                    height: 22.h,
                    width: 68.w,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 94, 93, 82),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: Text(
                        "Approved",
                        style: GoogleFonts.outfit(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF2D701),
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 15.w, top: 20.h, bottom: 20.h),
              decoration: BoxDecoration(
                color: Color(0xff34383D),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leave Request - 15 Apr 2025",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.5,
                    ),
                  ),
                  SizedBox(height: 11.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reason:",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                        TextSpan(
                          text: " Family Function",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 0.8),
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.h),
                  Container(
                    height: 22.h,
                    width: 62.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 218, 210),
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: Text(
                        "Rejected",
                        style: GoogleFonts.outfit(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFF3D00),
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
