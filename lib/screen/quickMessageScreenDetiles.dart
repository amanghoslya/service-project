import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Quickmessagescreendetiles extends StatefulWidget {
  const Quickmessagescreendetiles({super.key});

  @override
  State<Quickmessagescreendetiles> createState() =>
      _QuickmessagescreendetilesState();
}

class _QuickmessagescreendetilesState extends State<Quickmessagescreendetiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 152.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: const BoxDecoration(color: Color(0xffF2D701)),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // 🔥 Back Icon (Left Side)
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
          
                // 🔥 Center Text
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quick Message",
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
          SizedBox(height: 37.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Send Message to Admin",
                  style: GoogleFonts.outfit(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(height: 24.h),
                TextField(
                  maxLines: 5,
                  minLines: 5,

                  scrollPadding: EdgeInsets.only(top: 13.h, left: 14.w),

                  style: GoogleFonts.parkinsans(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),

                  cursorColor: Colors.white,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff34383D),

                    hintText:
                        "Type a Message\n(Assignment Accepted. Will reach at location by 3:00 PM)",

                    hintStyle: GoogleFonts.parkinsans(
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 0.7),
                      fontSize: 13.sp,
                      letterSpacing: -0.5,
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      vertical: 18.h,
                      horizontal: 14.w,
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide.none,
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide.none,
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.r),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    color: Color(0xffF2D701),
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                  child: Center(
                    child: Text(
                      "Send",
                      style: GoogleFonts.outfit(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: Color(0xff04254E),
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
  }
}
