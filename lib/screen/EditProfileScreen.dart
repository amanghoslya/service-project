import 'dart:io';

import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Editprofilescreen extends StatefulWidget {
  const Editprofilescreen({super.key});

  @override
  State<Editprofilescreen> createState() => _EditprofilescreenState();
}

class _EditprofilescreenState extends State<Editprofilescreen> {
  List<String> serviceList = [
    "AC Repair",
    "Cleaning",
    "Plumbing",
    "Painting",
    "Electrician",
  ];
  List<String> availabilityList = [
    "Available",
    "Not Available",
    "Busy",
    "On Leave",
    "Part-Time",
    "Full-Time",
    "Weekdays Only",
    "Weekends Only",
    "Morning Shift",
    "Afternoon Shift",
    "Evening Shift",
    "Night Shift",
  ];
  String? selectedAvailabity;
  String? selectedService;
  File? _image;

  final ImagePicker picker = ImagePicker();
  Future<void> getImageFromGallery() async {
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> getImageFromCamera() async {
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future showImage() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              getImageFromGallery();
            },
            child: Text("Gallery"),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              getImageFromCamera();
            },
            child: Text("Camera"),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 214.h,
                  decoration: BoxDecoration(color: AppColors.buttonBg),
                ),
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
                        color: AppColors.buttonText,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.buttonBg,
                          size: 15.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 71.h,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      "Edit Profile",
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
                  left: 0,
                  right: 0,
                  bottom: -55.h,
                  child: GestureDetector(
                    onTap: () {
                      showImage();
                    },
                    child: Container(
                      height: 110.h,
                      width: 110.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff04254E), width: 2),
                      ),
                      child: Center(
                        child: ClipOval(
                          child: _image != null
                              ? Image.file(
                                  _image!,
                                  fit: BoxFit.fill,
                                  width: 110.w,
                                  height: 110.h,
                                )
                              : Center(
                                  child: Icon(
                                    Icons.image,
                                    color: Color(0xff323232),
                                    size: 54.sp,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 70.h),
            Center(
              child: Text(
                "Upload Photo",
                style: GoogleFonts.outfit(
                  fontWeight: FontWeight.w600,
                  color: AppColors.buttonBg,
                  fontSize: 18.sp,
                  letterSpacing: -0.3,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _register(
                    hintText: "Jelani",
                    text: "Full Name",
                    keyBord: TextInputType.name,
                  ),
                  SizedBox(height: 14.h),
                  _register(
                    hintText: "+44-0000-000-000",
                    text: "Phone Number",
                    keyBord: TextInputType.number,
                    length: 10,
                  ),
                  SizedBox(height: 14.h),
                  _register(
                    hintText: "Jelani@example.com",
                    text: "Email",
                    keyBord: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 14.h),
                  _register(
                    hintText: "Thema",
                    text: "Experience",
                    keyBord: TextInputType.name,
                  ),
                  SizedBox(height: 14.h),
                  _register(
                    hintText: "Thema",
                    text: "City",
                    keyBord: TextInputType.streetAddress,
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    "Service Category",
                    style: GoogleFonts.outfit(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.4,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedService,
                        isExpanded: true,
                        dropdownColor: AppColors.scaffoldBg,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 25.sp,
                          color: AppColors.buttonBg,
                        ),
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Text(
                            "Select Service",
                            style: GoogleFonts.parkinsans(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                          ),
                        ),
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),

                        selectedItemBuilder: (context) {
                          return serviceList.map((item) {
                            return Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  item,
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            );
                          }).toList();
                        },

                        items: serviceList.map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(item),
                            ),
                          );
                        }).toList(),

                        onChanged: (value) {
                          setState(() {
                            selectedService = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    "Availability",
                    style: GoogleFonts.outfit(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF),
                      letterSpacing: -0.4,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                      ),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedAvailabity,
                        isExpanded: true,
                        dropdownColor: AppColors.scaffoldBg,
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 25.sp,
                          color: AppColors.buttonBg,
                        ),
                        hint: Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Text(
                            "Select Availabity",
                            style: GoogleFonts.parkinsans(
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(255, 255, 255, 0.5),
                            ),
                          ),
                        ),
                        style: GoogleFonts.outfit(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        selectedItemBuilder: (context) {
                          return availabilityList.map((item) {
                            return Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  item,
                                  style: GoogleFonts.outfit(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            );
                          }).toList();
                        },
                        items: availabilityList.map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(item),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedAvailabity = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 14.h),
                  Text(
                    "Address",
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
                      style: GoogleFonts.parkinsans(
                        color: Colors.white, // typed text white
                        fontSize: 14.sp,
                      ),
                      keyboardType: TextInputType.streetAddress,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintText: "Enter Full address",
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
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffF2D701),
                        minimumSize: Size(double.infinity, 54.h),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Save",
                        style: GoogleFonts.outfit(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff04254E),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _register({
  required String hintText,
  required String text,
  required TextInputType keyBord,
  int? length,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
          letterSpacing: -0.4,
        ),
      ),
      SizedBox(height: 8.h),
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
        child: TextField(
          keyboardType: keyBord,
          style: GoogleFonts.parkinsans(
            color: Colors.white, // typed text white
            fontSize: 14.sp,
          ),
          maxLength: length,
          cursorColor: Colors.white,
          decoration: InputDecoration(
            counterText: "",
            hintText: hintText,
            hintStyle: GoogleFonts.parkinsans(
              fontSize: 13.sp,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(255, 255, 255, 0.5),
              letterSpacing: -0.4,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 0.6)),
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
    ],
  );
}
