import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:dwelleasy_ghana/screen/detilesScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Assignedscreen extends StatefulWidget {
  const Assignedscreen({super.key});

  @override
  State<Assignedscreen> createState() => _AssignedscreenState();
}

class _AssignedscreenState extends State<Assignedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: Column(
        children: [
          Container(
            height: 150.h,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: const BoxDecoration(color: Color(0xffF2D701)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 44.r,
                      width: 44.r,
                      decoration: const BoxDecoration(
                        color: Color(0xff04254E),
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffF2D701),
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),

                /// CENTER TEXT
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Assigned",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.outfit(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff04254E),
                        letterSpacing: -0.5,
                        height: 1,
                      ),
                    ),

                    SizedBox(height: 8.h),

                    Text(
                      "Work Assignment Confirmed",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.parkinsans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(4, 37, 78, 0.8),
                        letterSpacing: -0.5,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                padding: EdgeInsets.only(
                  top: 15.h,
                  left: 15.w,
                  right: 15.w,
                  bottom: 13.h,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff34383D),
                  borderRadius: BorderRadius.circular(10.r),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 🔥 Date
                    Text(
                      "20 Apr 2025",
                      style: GoogleFonts.parkinsans(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                        color: Colors.white,
                        letterSpacing: -0.5,
                      ),
                    ),

                    SizedBox(height: 14.h),

                    // 🔥 Time
                    Text(
                      "Time: 9:00 AM - 1:00 PM",
                      style: GoogleFonts.parkinsans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.white,
                        letterSpacing: -0.5,
                      ),
                    ),

                    SizedBox(height: 10.h),
                    Text(
                      "Area: Thema",
                      style: GoogleFonts.parkinsans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.white,
                        letterSpacing: -0.5,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    // 🔥 Service
                    Text(
                      "Service: AC Repair",
                      style: GoogleFonts.parkinsans(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Colors.white,
                        letterSpacing: -0.5,
                      ),
                    ),

                    SizedBox(height: 14.h),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Detilesscreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 9.h),
                        decoration: BoxDecoration(
                          color: Color(0xffF2D701),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Center(
                          child: Text(
                            "View Details",
                            style: GoogleFonts.outfit(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff04254E),
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
