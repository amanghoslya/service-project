import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:dwelleasy_ghana/screen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  List<String> serviceList = [
    "AC Repair",
    "Cleaning",
    "Plumbing",
    "Painting",
    "Electrician",
  ];
  String? selectedService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 103.h),
              Center(
                child: Container(
                  width: 49.w,
                  height: 49.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.buttonBg,
                  ),
                  child: Center(
                    child: Text(
                      "v",
                      style: GoogleFonts.urbanist(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  "CREATE ACCOUNT",
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  "Create your Employee Account",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8D8D8D),
                  ),
                ),
              ),
              SizedBox(height: 26.h),
              _registerForm(
                label: "Full Name",
                hintText: "Enter Your Full Name",
              ),
              _registerForm(label: "Email", hintText: "Enter Your Email"),
              _registerForm(
                label: "Phone Number",
                hintText: "Enter Your Phone Number",
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 16.h),
                padding: EdgeInsets.only(
                  left: 12.w,
                  right: 12.w,
                  top: 12.h,
                  bottom: 10.h,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.cardBg,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title
                    Text(
                      "Service Category",
                      style: GoogleFonts.outfit(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedService,
                        isExpanded: true,
                        dropdownColor: AppColors.scaffoldBg,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 28.sp,
                          color: AppColors.buttonBg,
                        ),
                        hint: Text(
                          "Select Service",
                          style: GoogleFonts.parkinsans(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(127, 255, 255, 255),
                          ),
                        ),
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                        items: serviceList.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedService = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              _registerForm(label: "Password", hintText: "Create Password"),
              SizedBox(height: 30.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(3398.w, 53.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                    side: BorderSide.none,
                  ),
                  backgroundColor: AppColors.buttonBg,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginscreen()),
                  );
                },
                child: Text(
                  "Register",
                  style: GoogleFonts.outfit(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.buttonText,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget _registerForm({required String label, required String hintText}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.only(
        left: 12.w,
        right: 12.w,
        top: 12.h,
        bottom: 10.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.cardBg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.outfit(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFFFFFF),
            ),
          ),
          TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              hint: Text(
                hintText,
                style: GoogleFonts.parkinsans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(127, 255, 255, 255),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
