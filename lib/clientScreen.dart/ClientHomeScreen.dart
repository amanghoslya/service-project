import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Clienthomescreen extends StatefulWidget {
  const Clienthomescreen({super.key});

  @override
  State<Clienthomescreen> createState() => _ClienthomescreenState();
}

class _ClienthomescreenState extends State<Clienthomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungBg,
      appBar: AppBar(
        toolbarHeight: 90.h,
        backgroundColor: AppColors.backgroungBg,
        automaticallyImplyLeading: false,

        title: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: Image.asset(
                    "assets/ClientImage/Ellipse 1202 (1).png",
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, Amari👋',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: AppColors.buttonText,
                        letterSpacing: 0.2,
                      ),
                    ),

                    SizedBox(height: 7.h),

                    Text(
                      'Your home maintenance dashboard',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.parkinsans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: AppColors.buttonText,
                        letterSpacing: -0.3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        actions: [
          Padding(
            padding: EdgeInsets.only(top: 10.h, right: 16.w),
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xffF2D701)),
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.notifications_none,
                  color: const Color(0xffF2D701),
                  size: 20.sp,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Container(
              height: 48.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.buttonBg,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text(
                  "Our Plans",
                  style: GoogleFonts.outfit(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.buttonText,
                    letterSpacing: -0.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
