import 'package:dwelleasy_ghana/clientScreen.dart/forgote/ClientVerifyOtpScreen.dart';
import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Clientforgotescreen extends StatefulWidget {
  const Clientforgotescreen({super.key});

  @override
  State<Clientforgotescreen> createState() => _ClientforgotescreenState();
}

class _ClientforgotescreenState extends State<Clientforgotescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungBg,
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 124.h),
              Container(
                height: 49.h,
                width: 49.w,
                decoration: BoxDecoration(
                  color: AppColors.buttonBg,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "F",
                    style: GoogleFonts.urbanist(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "FORGOT PASSWORD?",
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Enter your registered email or phone number to\n reset your password.",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff747474),
                  letterSpacing: -0.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 56.h),
              Container(
                padding: EdgeInsets.only(
                  left: 12.w,
                  right: 12.w,
                  top: 12.h,
                  bottom: 10.h,
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(37, 37, 37, 0.12),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email  / Phone",
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.buttonText,
                        letterSpacing: -0.5,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        hint: Text(
                          "Kenny@example.com",
                          style: GoogleFonts.parkinsans(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff838383),
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                height: 53.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonBg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(100.r),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Clientverifyotpscreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Reset",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonText,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
