import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:dwelleasy_ghana/screen/EditProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilescreen extends StatefulWidget {
  final bool showBackButton;

  const Profilescreen({super.key, this.showBackButton = false});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 214.h,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffF2D701)),
              ),

              /// Back Button
              if (widget.showBackButton)
                Positioned(
                  top: 61.h,
                  left: 16.w,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 44.h,
                      width: 44.w,
                      padding: EdgeInsets.only(left: 5.w),
                      decoration: BoxDecoration(
                        color: Color(0xff04254E),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xffF2D701),
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),

              /// Title
              Positioned(
                top: 70.h,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    "Profile",
                    style: GoogleFonts.outfit(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff04254E),
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -50,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    height: 113.h,
                    width: 113.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff04254E), width: 1),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/Ellipse 2 (1).png",
                        fit: BoxFit.cover, // image proper circle fill karegi
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 65.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Column(
              children: [
                Text(
                  "Jelani",
                  style: GoogleFonts.outfit(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffF2D701),
                    letterSpacing: -0.3,
                  ),
                ),
                SizedBox(height: 8.h),
                Text(
                  "AC Repair Specialist",
                  style: GoogleFonts.parkinsans(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 119, 113, 113),
                    letterSpacing: -0.3,
                  ),
                ),
                SizedBox(height: 25.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 14.h,
                    horizontal: 14.w,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff34383D),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Personal Information",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: -0.3,
                        ),
                      ),
                      SizedBox(height: 13.h),
                      _profile("Phone", "+44- 9876543210"),
                      SizedBox(height: 12.h),
                      _profile("Email", "Jelani@example.com"),
                      SizedBox(height: 12.h),
                      _profile("City", "Thema"),
                    ],
                  ),
                ),
                SizedBox(height: 17.h),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 14.w,
                    right: 14.w,
                    top: 14.h,
                    bottom: 26.h,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff34383D),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Work Statistics",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: -0.3,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 25.h),
                              decoration: BoxDecoration(
                                color: Color(0xffF2D701),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "120",
                                    style: GoogleFonts.outfit(
                                      fontSize: 21.w,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    "Jobs Done",
                                    style: GoogleFonts.parkinsans(
                                      fontSize: 13.w,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.5,
                                      color: Color(0xff424242),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 25.w),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 25.h),
                              decoration: BoxDecoration(
                                color: Color(0xffF2D701),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.9",
                                    style: GoogleFonts.outfit(
                                      fontSize: 21.w,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    "Rating",
                                    style: GoogleFonts.parkinsans(
                                      fontSize: 13.w,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -0.5,
                                      color: Color(0xff424242),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 37.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF2D701),
                      minimumSize: Size(double.infinity, 54.h),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Editprofilescreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Edit Profile",
                      style: GoogleFonts.outfit(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff04254E),
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

Widget _profile(String text, String text2) {
  return Row(
    children: [
      Text(
        text,
        style: GoogleFonts.parkinsans(
          fontSize: 13.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          letterSpacing: -0.3,
        ),
      ),
      Spacer(),
      Text(
        text2,
        style: GoogleFonts.parkinsans(
          fontSize: 15.sp,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          letterSpacing: -0.3,
        ),
      ),
    ],
  );
}
