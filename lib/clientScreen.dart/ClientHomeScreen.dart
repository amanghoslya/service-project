import 'package:dwelleasy_ghana/clientScreen.dart/OurPlans/ClientOurPlanDetilesScreen.dart';
import 'package:dwelleasy_ghana/clientScreen.dart/createRequest/createService.dart';
import 'package:dwelleasy_ghana/clientScreen.dart/createRequest/myRequest.dart';
import 'package:dwelleasy_ghana/clientScreen.dart/myPlan/myPlanScreen.dart';
import 'package:dwelleasy_ghana/clientScreen.dart/profile/profileScreen.dart';
import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientMyBottomNav extends StatefulWidget {
  const ClientMyBottomNav({super.key});

  @override
  State<ClientMyBottomNav> createState() => _ClientMyBottomNavState();
}

class _ClientMyBottomNavState extends State<ClientMyBottomNav> {
  int currentIndex = 0;

  List<Widget> screen = [
    Clienthomescreen(),
    Myrequest(),
    MyPlanScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
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
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: currentIndex == 0 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.home_filled,
                color: Color(0xff04254E),
                size: 22.sp,
              ),
            ),
            label: "HOME",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: currentIndex == 1 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.bar_chart,
                color: Color(0xff04254E),
                size: 22.sp,
              ),
            ),
            label: "REQUEST",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: currentIndex == 2 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.inbox, color: Color(0xff04254E), size: 22.sp),
            ),
            label: "PLAN",
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(bottom: 6.h, top: 10.h),
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: currentIndex == 3 ? Color(0xffF2D701) : Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person, color: Color(0xff04254E), size: 22.sp),
            ),
            label: "PROFILE",
          ),
        ],
      ),
    );
  }
}

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
      body: SingleChildScrollView(
        child: Padding(
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
              SizedBox(height: 20.h),
              ActivePlans(),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivePlans extends StatefulWidget {
  const ActivePlans({super.key});

  @override
  State<ActivePlans> createState() => _ActivePlansState();
}

class _ActivePlansState extends State<ActivePlans> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
              top: 15.h,
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
                    "Unlimited Service Requests",
                    style: GoogleFonts.parkinsans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonText,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Text(
                    "Next Renewal: 15 June 2025",
                    style: GoogleFonts.parkinsans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonText,
                      letterSpacing: -0.5,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Container(
                    width: 140.w,
                    height: 35.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: AppColors.buttonText,
                    ),
                    child: Center(
                      child: Text(
                        "Access Plan",
                        style: GoogleFonts.outfit(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.buttonBg,
                          letterSpacing: -0.54,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 30.h),
        Row(
          children: [
            Expanded(
              child: Container(
                width: 189.w,
                height: 108.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: AppColors.buttonBg,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "3",
                      style: GoogleFonts.inter(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Requests Used",
                      style: GoogleFonts.parkinsans(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF424242),
                        letterSpacing: -0.54,
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20.w),
            Container(
              width: 189.w,
              height: 108.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: AppColors.buttonBg,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "15 Jun",
                    style: GoogleFonts.inter(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Next AC Service",
                    style: GoogleFonts.parkinsans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF424242),
                      letterSpacing: -0.54,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 45.h),
            backgroundColor: AppColors.buttonBg,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(54.r),
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => CreateService()),
            );
          },
          child: Text(
            "+ Create Service Request",
            style: GoogleFonts.outfit(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xFF04254E),
              letterSpacing: -0.54,
            ),
          ),
        ),
        SizedBox(height: 25.h),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(color: AppColors.buttonBg, width: 1.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home AC Units",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                      letterSpacing: -0.54,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5.h,
                      horizontal: 25.w,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: AppColors.buttonBg,
                    ),
                    child: Text(
                      "Due Soon",
                      style: GoogleFonts.parkinsans(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF000000),
                        letterSpacing: -0.54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 14.h,
                        horizontal: 12.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: Color(0xFFB6B6B6),
                          width: 1.w,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Last Service Date",
                            style: GoogleFonts.parkinsans(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF838383),
                              letterSpacing: -0.54,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "12 January 2026",
                            style: GoogleFonts.parkinsans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                              letterSpacing: -0.54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 14.h,
                        horizontal: 12.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: Color(0xFFB6B6B6),
                          width: 1.w,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Next Due Date",
                            style: GoogleFonts.parkinsans(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF838383),
                              letterSpacing: -0.54,
                            ),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "12 July 2026",
                            style: GoogleFonts.parkinsans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF000000),
                              letterSpacing: -0.54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 45.h),
                  backgroundColor: AppColors.buttonBg,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(54.r),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "View All",
                  style: GoogleFonts.outfit(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF04254E),
                    letterSpacing: -0.54,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 25.h),
        Text(
          "Recent Requests",
          style: GoogleFonts.outfit(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xFF04254E),
            letterSpacing: -0.54,
          ),
        ),
        SizedBox(height: 16.h),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.w,
            childAspectRatio: 0.74,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.r),
                    topRight: Radius.circular(16.r),
                  ),
                  child: Image.asset(
                    "assets/Rectangle 4.png",
                    width: 189.w,
                    height: 138.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(color: const Color(0xffF2D701)),
                      right: BorderSide(color: const Color(0xffF2D701)),
                      bottom: BorderSide(color: const Color(0xffF2D701)),
                      top: BorderSide.none,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(16.r),
                      bottomRight: Radius.circular(16.r),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AC Repair Service",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.buttonText,
                          letterSpacing: -0.5,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffF2D701),
                            size: 15.sp,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            "4.9",
                            style: GoogleFonts.inter(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.buttonText,
                              letterSpacing: -0.5,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            "(500+ Reviews)",
                            style: GoogleFonts.inter(
                              color: Color(0xff808080),
                              fontSize: 14.sp,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        "Engineer: Dakarai",
                        style: GoogleFonts.parkinsans(
                          color: AppColors.buttonText,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
