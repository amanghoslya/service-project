import 'package:dwelleasy_ghana/clientScreen.dart/OurPlans/ClientOurPlanDetilesScreen.dart';
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
  int currentIndex = 0;
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
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Clientourplandetilesscreen(),
                  ),
                );
              },
              child: Container(
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
            ),
            SizedBox(height: 20.h),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12.r),
                  child: Image.asset(
                    "assets/WhatsApp Image 2026-05-07 at 12.12.29 PM.jpeg",
                    width: double.infinity,
                    height: 159.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 15.w,
                  top: 42.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Basic Plan",
                        style: GoogleFonts.outfit(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.buttonText,
                          letterSpacing: -0.5,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "2 call-outs per year (perfect for newer homes)",
                        style: GoogleFonts.parkinsans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.buttonText,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(12.r),
                  child: Image.asset(
                    "assets/ClientImage/WhatsApp Image 2026-05-16 at 3.42.35 PM.jpeg",
                    width: double.infinity,
                    height: 159.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 15.w,
                  top: 42.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Premium Plan",
                        style: GoogleFonts.outfit(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.5,
                          color: AppColors.buttonText,
                        ),
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        "Unlimited call-outs (total peace of mind)",
                        style: GoogleFonts.parkinsans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                          color: AppColors.buttonText,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        backgroundColor: Color(0xff34383D),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          letterSpacing: -0.2,
        ),

        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          letterSpacing: -0.2,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              height: 51.h,
              width: 51.w,
              decoration: BoxDecoration(
                color: currentIndex == 0 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.home_filled, color: Color(0xff04254E)),
            ),
            label: "HOME",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              height: 51.h,
              width: 51.w,
              decoration: BoxDecoration(
                color: currentIndex == 1 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.bar_chart, color: Color(0xff04254E)),
            ),
            label: "REQUEST",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              height: 51.h,
              width: 51.w,
              decoration: BoxDecoration(
                color: currentIndex == 2 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.inbox, color: Color(0xff04254E)),
            ),
            label: "PLAN",
          ),

          BottomNavigationBarItem(
            icon: Container(
              height: 51.h,
              width: 51.w,
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              decoration: BoxDecoration(
                color: currentIndex == 3 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: Color(0xff04254E)),
            ),
            label: "PROFILE",
          ),
        ],
      ),
    );
  }
}
