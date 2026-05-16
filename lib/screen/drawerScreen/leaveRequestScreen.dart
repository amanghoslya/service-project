import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Leaverequestscreen extends StatefulWidget {
  const Leaverequestscreen({super.key});

  @override
  State<Leaverequestscreen> createState() => _LeaverequestscreenState();
}

class _LeaverequestscreenState extends State<Leaverequestscreen> {
  DateTime? selectedDate;
  Future<void> pickDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Leave Request",
              style: GoogleFonts.outfit(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.buttonBg,
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 7.h),
            Text(
              "Submit your leave request to the Admin",
              style: GoogleFonts.parkinsans(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.buttonBg,
                letterSpacing: -0.4,
              ),
            ),
          ],
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 44.h,
              width: 44.w,
              padding: EdgeInsets.only(left: 5.w),
              decoration: BoxDecoration(
                color: AppColors.buttonBg,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.buttonText,
                  size: 15.sp,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 21.h),
            Text(
              "Leave Date",
              style: GoogleFonts.outfit(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF),
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 12.h),
            GestureDetector(
              child: Container(
                height: 55.h,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(255, 255, 255, 0.5)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedDate == null
                          ? "Select Date"
                          : "${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}",
                      style: GoogleFonts.parkinsans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: selectedDate == null
                            ? Color.fromRGBO(255, 255, 255, 0.5)
                            : Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: pickDate,
                      child: Icon(
                        Icons.date_range_rounded,
                        color: Colors.white,
                        size: 22.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.h),
            Text(
              "Reason for the Leave Application",
              style: GoogleFonts.outfit(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xffFFFFFF),
                letterSpacing: -0.4,
              ),
            ),
            SizedBox(height: 8.h),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextField(
                maxLines: 5,
                minLines: 5,
                scrollPhysics: BouncingScrollPhysics(),
                style: GoogleFonts.parkinsans(
                  color: Colors.white, // typed text white
                  fontSize: 14.sp,
                ),
                keyboardType: TextInputType.streetAddress,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hintText: "Reason",
                  hintStyle: GoogleFonts.parkinsans(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                    letterSpacing: -0.4,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(
                        255,
                        255,
                        255,
                        0.6,
                      ), // same border on focus
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
            Expanded(child: SizedBox()),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(3398.w, 53.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.r),
                  side: BorderSide.none,
                ),
                backgroundColor: AppColors.buttonBg,
              ),
              onPressed: () {},
              child: Text(
                "Submit Request",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                  letterSpacing: -0.3,
                ),
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
