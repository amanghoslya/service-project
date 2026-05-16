import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:dwelleasy_ghana/screen/EditProfileScreen.dart';
import 'package:dwelleasy_ghana/screen/detilesScreen.dart';
import 'package:dwelleasy_ghana/screen/YourScheduleScreen.dart';
import 'package:dwelleasy_ghana/screen/drawerScreen/leaveRequestScreen.dart';
import 'package:dwelleasy_ghana/screen/drawerScreen/leaveStatusScreen.dart';
import 'package:dwelleasy_ghana/screen/drawerScreen/myPerformanceScreen.dart';
import 'package:dwelleasy_ghana/screen/drawerScreen/settingScreen.dart';
import 'package:dwelleasy_ghana/screen/jobScreen.dart';
import 'package:dwelleasy_ghana/screen/notificationScreen.dart';
import 'package:dwelleasy_ghana/screen/profileScreen.dart';
import 'package:dwelleasy_ghana/screen/requestScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<Map<String, String>> items = [
    {"icon": "assets/all 1.png", "label": "Show All"},
    {"icon": "assets/car-side 1.png", "label": "Car Repair"},
    {
      "icon": "assets/ac-air-conditioner-cold-air-conditioning 1.png",
      "label": "AC Repair",
    },
    {"icon": "assets/fridge 1.png", "label": "Fridge Repair"},
    {"icon": "assets/tv-alt 1.png", "label": "TV Repair"},
  ];

  List<Map<String, dynamic>> item = [
    {
      "image": "assets/Rectangle 4.png",
      "name": "Air Conditioner Repair",
      "text": "Customer: john Doe",
    },
    {
      "image": "assets/Rectangle 4 (1).png",
      "name": "Air Conditioner Repair",
      "text": "Customer: john Doe",
    },
    {
      "image": "assets/Rectangle 4 (2).png",
      "name": "Air Conditioner Repair",
      "text": "Customer: john Doe",
    },
    {
      "image": "assets/Rectangle 4 (3).png",
      "name": "Air Conditioner Repair",
      "text": "Customer: john Doe",
    },
  ];

  int selectedIndex = 0;
  int currentIndex = 0;
  DateTime? lastBackPressed;
  void showLogoutDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.7),
      builder: (context) {
        return Dialog(
          backgroundColor: AppColors.buttonBg,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 27.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 75.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                    color: AppColors.buttonText,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.logout,
                      color: AppColors.buttonBg,
                      size: 35.sp,
                    ),
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Logout",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff000000),
                    letterSpacing: -0.5,
                  ),
                ),

                SizedBox(height: 10.h),

                Text(
                  "Are you sure you want to logout from your account?",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.outfit(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                    letterSpacing: -0.3,
                  ),
                ),

                SizedBox(height: 30.h),

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 14.h),
                          decoration: BoxDecoration(
                            color: Color(0xffB40A0A),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              "Yes, Logout",
                              style: GoogleFonts.outfit(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffFFFFFF),
                                letterSpacing: -0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 11.w),

                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 14.h),
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.buttonText),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: GoogleFonts.outfit(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff04254E),
                                letterSpacing: -0.3,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex != 0) {
          setState(() {
            currentIndex = 0;
          });
          return false; // sirf home par le jao
        }

        final now = DateTime.now();

        if (lastBackPressed == null ||
            now.difference(lastBackPressed!) > Duration(seconds: 2)) {
          lastBackPressed = now;

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              width: 200.w,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.r),
              ),
              content: Center(
                child: Text(
                  "Press back again to exit",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              duration: Duration(seconds: 1),
            ),
          );

          return false;
        }

        return true;
      },
      child: Scaffold(
        key: scaffoldKey,
        drawer: Padding(
          padding: EdgeInsets.only(left: 17.w, top: 40.h, bottom: 15.h),
          child: Drawer(
            width: 295.w,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(30.r),
            ),
            child: Column(
              children: [
                Container(
                  height: 260.h,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 23.w,
                    right: 16.w,
                    bottom: 20.h,
                    top: 20.h,
                  ),
                  decoration: BoxDecoration(color: Color(0xffF2D701)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
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
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 45.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/Ellipse 2.png",
                            height: 50.h,
                            width: 50.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Editprofilescreen(),
                                ),
                              );
                            },
                            child: Container(
                              width: 94.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 170, 158, 68),
                                borderRadius: BorderRadius.circular(50.r),
                              ),
                              child: Center(
                                child: Text(
                                  "Edit Profile",
                                  style: GoogleFonts.outfit(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff04254E),
                                    letterSpacing: -0.3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Text(
                        "Jelani",
                        style: GoogleFonts.outfit(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff04254E),
                          letterSpacing: -0.3,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        "AC Repair Specialist",
                        style: GoogleFonts.parkinsans(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff04254E),
                          letterSpacing: -0.3,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 32),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Profilescreen(showBackButton: true),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/Mask group.png",
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                "My Profile",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff04254E),
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Leaverequestscreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/Page-1.png",
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Leave Request",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff04254E),
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Leavestatusscreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/Page-1.png",
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "Leave Status",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff04254E),
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Myperformancescreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/performance-up-graph 1.png",
                                height: 20.h,
                                width: 20.w,
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                "My Performance",
                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff04254E),
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),

                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Settingscreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                color: Color(0xffF2D701),
                                size: 22.sp,
                              ),

                              SizedBox(width: 8.w),

                              Text(
                                "Settings",

                                style: GoogleFonts.outfit(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff04254E),
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 20,
                        ),
                        SizedBox(height: 20.h),
                        InkWell(
                          onTap: () {
                            showLogoutDialog();
                          },
                          child: Row(
                            children: [
                              Icon(Icons.logout, color: Color(0xffF2D701)),
                              SizedBox(width: 8.w),
                              Text(
                                "Logout",
                                style: GoogleFonts.outfit(
                                  color: Color(0xff04254E),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 36.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: AppColors.scaffoldBg,
        appBar: currentIndex == 0
            ? AppBar(
                toolbarHeight: 90.h,
                leadingWidth: 260.w,
                backgroundColor: AppColors.scaffoldBg,
                leading: Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 16.h),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          scaffoldKey.currentState?.openDrawer();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.r),
                          child: Image.asset(
                            "assets/SvgImage/Ellipse 1202.png",
                            width: 60.w,
                            height: 60.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(width: 6.w),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello, Employee',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),

                          SizedBox(height: 7.h),

                          Text(
                            'Ready for today’s jobs?',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.parkinsans(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              color: Colors.white,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(top: 26.h, right: 16.w),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Notificationscreen(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 20.r,
                        backgroundColor: Colors.transparent,
                        child: Container(
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
                  ),
                ],
              )
            : null,
        body: currentIndex == 0
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: GoogleFonts.parkinsans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),

                              cursorColor: Colors.white,

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: const Color(0xff34383D),

                                hint: Text(
                                  "Search Services...",
                                  style: GoogleFonts.parkinsans(
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    fontSize: 16.sp,
                                    letterSpacing: -0.5,
                                  ),
                                ),

                                hintStyle: GoogleFonts.parkinsans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),

                                prefixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),

                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 18.h,
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
                          ),
                          SizedBox(width: 16.w),
                          Container(
                            padding: EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: Color(0xffF2D701),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.menu,
                                color: Color(0xff04254E),
                                size: 22.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w),
                      child: SizedBox(
                        height: 159.h, // ListView ko height di
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Yourschedulescreen(),
                              ),
                            );
                          },
                          child: SizedBox(
                            height: 170.h,
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 365.w,
                                  margin: EdgeInsets.only(right: 12.w),
                                  child: Stack(
                                    children: [
                                      /// 📸 Background Image
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                        child: Image.asset(
                                          "assets/WhatsApp Image 2026-05-07 at 12.12.29 PM.jpeg",
                                          width: 365.w,
                                          height: 159.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),

                                      /// 📝 Overlay Content
                                      Positioned(
                                        left: 15.w,
                                        top: 18.h,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Welcome, Employee",
                                              style: GoogleFonts.outfit(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff04254E),
                                                letterSpacing: -0.5,
                                              ),
                                            ),

                                            SizedBox(height: 6.h),

                                            Text(
                                              "Here is your job\nsummary for today",
                                              style: GoogleFonts.outfit(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff04254E),
                                                letterSpacing: -0.5,
                                              ),
                                            ),

                                            SizedBox(height: 14.h),

                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 10.h,
                                                horizontal: 40.w,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Color(0xff04254E),
                                                borderRadius:
                                                    BorderRadius.circular(50.r),
                                              ),
                                              child: Text(
                                                "View Job",
                                                style: GoogleFonts.outfit(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xffF2D701),
                                                  letterSpacing: -0.5,
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
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 33.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: Row(
                        children: [
                          _complete("8", "Assigned"),
                          SizedBox(width: 16.w),
                          _complete("3", "Pending"),
                          SizedBox(width: 16.w),
                          _complete("5", "Completed"),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w, right: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Subcategories",
                            style: GoogleFonts.outfit(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18.sp,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Text(
                            "View All",
                            style: GoogleFonts.outfit(
                              fontSize: 13.sp,
                              color: Color(0xffF2D701),
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      child: Row(
                        children: List.generate(items.length, (index) {
                          bool isSelected = selectedIndex == index;

                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Column(
                                children: [
                                  // Fixed Circle Container
                                  Container(
                                    height: 67.h,
                                    width: 67.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: isSelected
                                          ? const Color(0xffF2D701)
                                          : const Color(0xff34383D),
                                    ),
                                    child: Image.asset(
                                      items[index]["icon"]!,
                                      height: 22.h,
                                      width: 22.w,
                                      color: isSelected
                                          ? const Color(0xff04254E)
                                          : Colors.white,
                                    ),
                                  ),

                                  SizedBox(height: 8.h),

                                  // Fixed Height For Text
                                  SizedBox(
                                    height: 40.h,
                                    child: Text(
                                      items[index]["label"]!,
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.outfit(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -0.4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 27.h),
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 16.w),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Detilesscreen(),
                            ),
                          );
                        },
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: item.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.w,
                                // mainAxisSpacing: 29.h,
                                childAspectRatio: 0.70,
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
                                    item[index]["image"],
                                    width: double.infinity,
                                    // height: 140.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(10.w),
                                  decoration: BoxDecoration(
                                    // color: const Color(0xff1E1E1E),
                                    border: Border(
                                      left: BorderSide(
                                        color: const Color(0xffF2D701),
                                      ),
                                      right: BorderSide(
                                        color: const Color(0xffF2D701),
                                      ),
                                      bottom: BorderSide(
                                        color: const Color(0xffF2D701),
                                      ),
                                      top: BorderSide
                                          .none, // 👈 IMPORTANT (NO TOP BORDER)
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.r),
                                      bottomRight: Radius.circular(16.r),
                                    ),
                                  ),

                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item[index]["name"],
                                        style: GoogleFonts.outfit(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
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
                                              color: Colors.white,
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
                                        "Customer: John Doe",
                                        style: GoogleFonts.parkinsans(
                                          color: Color(0xffF2D701),
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
                      ),
                    ),
                  ],
                ),
              )
            : currentIndex == 1
            ? Jobscreen()
            : currentIndex == 2
            ? Requestscreen()
            : Profilescreen(),

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
              label: "JOB",
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
              label: "REQUEST",
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
      ),
    );
  }
}

Widget _complete(String text, String title) {
  return Expanded(
    child: Container(
      height: 108.h,
      width: 122.w,
      decoration: BoxDecoration(
        color: const Color(0xffF2D701),
        borderRadius: BorderRadius.circular(4.r),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 🔥 vertical center
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
            ),
          ),

          SizedBox(height: 6.h),

          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.parkinsans(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xff424242),
              letterSpacing: -0.4,
            ),
          ),
        ],
      ),
    ),
  );
}
