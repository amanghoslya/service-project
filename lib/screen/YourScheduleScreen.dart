import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:dwelleasy_ghana/screen/quickMessageScreen.dart';
import 'package:dwelleasy_ghana/screen/quickMessageScreenDetiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Yourschedulescreen extends StatefulWidget {
  const Yourschedulescreen({super.key});

  @override
  State<Yourschedulescreen> createState() => _YourschedulescreenState();
}

class _YourschedulescreenState extends State<Yourschedulescreen> {
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 152.h,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              decoration: const BoxDecoration(color: Color(0xffF2D701)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // 🔥 Back Icon (Left Side)
                  Align(
                    alignment: Alignment.centerLeft,
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

                  // 🔥 Center Text
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Schedule",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff04254E),
                          letterSpacing: -0.5,
                        ),
                      ),

                      SizedBox(height: 8.h),

                      Text(
                        "View your assigned shifts and timings",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.outfit(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff04254E),
                          letterSpacing: -0.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      select = 0;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 16.w),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffF2D701)),
                      color: select == 0
                          ? const Color(0xffF2D701)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Today's Shift",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.outfit(
                            color: select == 0
                                ? const Color(0xff04254E)
                                : const Color(0xffF2D701),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.w),

              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      select = 1;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 16.w),
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffF2D701)),
                      color: select == 1
                          ? const Color(0xffF2D701)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Complete Shift",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.outfit(
                            color: select == 1
                                ? const Color(0xff04254E)
                                : const Color(0xffF2D701),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
                      "19 Apr 2025",
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
                      "Time: 9:00 AM - 9:30 AM",
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
                          MaterialPageRoute(
                            builder: (context) => Quickmessagescreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10.h,
                              horizontal: 34.w,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xff6CE227),
                              borderRadius: BorderRadius.circular(50.r),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Approve",
                              style: GoogleFonts.outfit(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff04254E),
                                letterSpacing: -0.5,
                              ),
                            ),
                          ),

                          SizedBox(width: 10.w),

                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Quickmessagescreendetiles(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 10.h,
                                horizontal: 19.w,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xffF2D701),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Send Message",
                                style: GoogleFonts.outfit(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff04254E),
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
              );
            },
          ),
        ],
      ),
    );
  }
}
