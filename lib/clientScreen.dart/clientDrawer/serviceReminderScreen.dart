import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Servicereminderscreen extends StatefulWidget {
  const Servicereminderscreen({super.key});

  @override
  State<Servicereminderscreen> createState() => _ServicereminderscreenState();
}

class _ServicereminderscreenState extends State<Servicereminderscreen> {
  List<Map<String, dynamic>> name = [
    {
      "text": "Living Room AC",
      "timing": "Due Soon",
      "date": "12 January 2026",
      "date2": "12 July 2026",
    },
    {
      "text": "Bedroom AC",
      "timing": "Upcoming",
      "date": "03 February 2026",
      "date2": "03 August 2026",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungBg,
      appBar: AppBar(toolbarHeight: 0, backgroundColor: AppColors.backgroungBg),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 44.h,
                        width: 44.w,
                        decoration: const BoxDecoration(
                          color: Color(0xff052B5B),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.buttonBg,
                            size: 15.sp,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Center(
                          child: Text(
                            "Service Reminder",
                            style: GoogleFonts.outfit(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: -0.5,
                              height: 2,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(width: 44.w), // balance ke liye
                    ],
                  ),
                  Text(
                    "Track your AC servicing schedule and\navoid maintenance delays",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.parkinsans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 37.h),
            Expanded(
              child: ListView.builder(
                itemCount: name.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 10.w,
                      top: 18.h,
                      bottom: 18.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(color: AppColors.buttonBg),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              name[index]["text"].toString(),
                              style: GoogleFonts.outfit(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff000000),
                                letterSpacing: -0.5,
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: 24.h,
                              width: 109.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.r),
                                color: AppColors.buttonBg,
                              ),
                              child: Center(
                                child: Text(
                                  name[index]["timing"],
                                  style: GoogleFonts.parkinsans(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff000000),
                                    letterSpacing: -0.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 14.h),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            left: 13.w,
                            top: 13.h,
                            bottom: 14.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffB6B6B6)),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Last Service Date",
                                style: GoogleFonts.parkinsans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff838383),
                                  letterSpacing: -0.5,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                name[index]["date"].toString(),
                                style: GoogleFonts.parkinsans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 14.h),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(
                            left: 13.w,
                            top: 13.h,
                            bottom: 14.h,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffB6B6B6)),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Next Due Date",
                                style: GoogleFonts.parkinsans(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff838383),
                                  letterSpacing: -0.5,
                                ),
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                name[index]["date2"].toString(),
                                style: GoogleFonts.parkinsans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
