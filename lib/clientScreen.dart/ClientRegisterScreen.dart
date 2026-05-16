import 'package:dwelleasy_ghana/clientScreen.dart/ClientLoginScreen.dart';
import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Clientregisterscreen extends StatefulWidget {
  const Clientregisterscreen({super.key});

  @override
  State<Clientregisterscreen> createState() => _ClientregisterscreenState();
}

class _ClientregisterscreenState extends State<Clientregisterscreen> {
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
                      "c",
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
                  "CREATE ACCOUNT",
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
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff747474),
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(height: 20.h),
                _registerForm(
                  label: "Full Name",
                  hintText: "Enter Your Full Name",
                ),
                SizedBox(height: 16.h),
                _registerForm(label: "Email", hintText: "Enter Your Email"),
                SizedBox(height: 16.h),
                _registerForm(
                  label: "Phone Number",
                  hintText: "Enter Your Phone Number",
                ),
                SizedBox(height: 16.h),
                _registerForm(label: "Password", hintText: "Create Password"),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.r),
                        side: BorderSide.none,
                      ),
                      backgroundColor: AppColors.buttonBg,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Clientloginscreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.outfit(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
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

Widget _registerForm({required String label, required String hintText}) {
  return Container(
    margin: EdgeInsets.only(bottom: 16.h),
    padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 12.h, bottom: 10.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      color: Color.fromRGBO(37, 37, 37, 0.12),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.outfit(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.buttonText,
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
            hint: Text(
              hintText,
              style: GoogleFonts.parkinsans(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff5D84B5),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
