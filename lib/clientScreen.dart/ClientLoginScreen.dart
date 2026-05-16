import 'package:dwelleasy_ghana/clientScreen.dart/ClientHomeScreen.dart';
import 'package:dwelleasy_ghana/clientScreen.dart/forgote/ClientForgoteScreen.dart';
import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Clientloginscreen extends StatefulWidget {
  const Clientloginscreen({super.key});

  @override
  State<Clientloginscreen> createState() => _ClientloginscreenState();
}

class _ClientloginscreenState extends State<Clientloginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungBg,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 80.h),
                Container(
                  height: 49.h,
                  width: 49.w,
                  decoration: BoxDecoration(
                    color: AppColors.buttonBg,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "L",
                      style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.sp,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "LOGIN ACCOUNT",
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.buttonText,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "Create your Client account",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff747474),
                    letterSpacing: -0.5,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 59.h),
                _login(lable: "Email  / Phone", hint: "Kenny@example.com"),
                SizedBox(height: 16.h),
                _login(lable: "Password", hint: "Enter Your Email"),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Clientforgotescreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot password?",
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff767676),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
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
                          builder: (context) => Clienthomescreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.outfit(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.buttonText,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _login({required String lable, required String hint}) {
  return Container(
    padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 12.h, bottom: 12.h),
    decoration: BoxDecoration(
      color: Color.fromRGBO(37, 37, 37, 0.12),
      borderRadius: BorderRadius.circular(10.r),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.5,
            color: AppColors.buttonText,
          ),
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            hint: Text(
              hint,
              style: GoogleFonts.parkinsans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff838383),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
