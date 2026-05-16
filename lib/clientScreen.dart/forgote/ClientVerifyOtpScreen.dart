import 'dart:async';

import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Clientverifyotpscreen extends StatefulWidget {
  const Clientverifyotpscreen({super.key});

  @override
  State<Clientverifyotpscreen> createState() => _ClientverifyotpscreenState();
}

class _ClientverifyotpscreenState extends State<Clientverifyotpscreen> {
  static int totalSeconds = 30;

  int remainingSeconds = totalSeconds;
  Timer? timer;
  final controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer?.cancel();
    remainingSeconds = totalSeconds;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingSeconds == 0) {
        timer.cancel();
      } else {
        setState(() {
          remainingSeconds--;
        });
      }
    });
  }

  double get progress {
    return remainingSeconds / totalSeconds;
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungBg,
      appBar: AppBar(
        backgroundColor: AppColors.backgroungBg,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(128, 128, 128, 0.12),
                  ),
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Color(0xffF2D701),
                    ),
                  ),
                ),
                Text(
                  "${remainingSeconds}s",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonText,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 22.h),
              Container(
                height: 49.h,
                width: 49.w,
                decoration: BoxDecoration(
                  color: AppColors.buttonBg,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "E",
                    style: GoogleFonts.urbanist(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "ENTER OTP",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Enter a 4 digit code sent to Ke***@example.com",
                style: GoogleFonts.parkinsans(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff8D8D8D),
                  letterSpacing: -0.5,
                ),
              ),
              SizedBox(height: 30.h),

              // OtpPinField(
              //   cursorColor: AppColors.buttonText,
              //   fieldWidth: 80.w,
              //   fieldHeight: 60.h,
              //   otpPinFieldDecoration:
              //       OtpPinFieldDecoration.defaultPinBoxDecoration,
              //   otpPinFieldStyle: OtpPinFieldStyle(
              //     hintText: "-",

              //     hintTextColor: AppColors.buttonText,
              //     showHintText: true,
              //     textStyle: TextStyle(
              //       color: AppColors.buttonText,
              //       fontSize: 18.sp,
              //       fontWeight: FontWeight.bold,
              //     ),
              //     activeFieldBackgroundColor: Color.fromRGBO(43, 43, 43, 0.12),
              //     activeFieldBorderColor: Color.fromRGBO(49, 49, 49, 0.14),
              //     defaultFieldBackgroundColor: Color.fromRGBO(
              //       208,
              //       206,
              //       206,
              //       0.11,
              //     ),
              //     defaultFieldBorderColor: Color.fromRGBO(49, 49, 19, 0.14),
              //     filledFieldBackgroundColor: Color.fromRGBO(49, 49, 49, 0.14),
              //   ),
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   maxLength: 4,
              //   onSubmit: (text) {},
              //   onChange: (text) {},
              // ),
              Pinput(
                length: 4,
                controller: controller,

                defaultPinTheme: PinTheme(
                  width: 80.w,
                  height: 60.h,
                  textStyle: TextStyle(
                    color: AppColors.buttonText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(208, 206, 206, 0.11),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color.fromRGBO(49, 49, 19, 0.14)),
                  ),
                ),

                focusedPinTheme: PinTheme(
                  width: 80.w,
                  height: 60.h,
                  textStyle: GoogleFonts.inter(
                    color: AppColors.buttonText,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(43, 43, 43, 0.12),
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color.fromRGBO(49, 49, 49, 0.14)),
                  ),
                ),

                submittedPinTheme: PinTheme(
                  width: 80.w,
                  height: 60.h,
                  textStyle: GoogleFonts.inter(
                    color: AppColors.buttonText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(43, 43, 43, 0.12), // same as focused
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: Color.fromRGBO(49, 49, 49, 0.14)),
                  ),
                ),

                preFilledWidget: Text(
                  "-",
                  style: TextStyle(
                    color: AppColors.buttonText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonBg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Next",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonText,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Don't receive the code? ",
                      style: GoogleFonts.parkinsans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff404040),
                      ),
                    ),
                    TextSpan(
                      text: "Resend",
                      style: GoogleFonts.parkinsans(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0072FF),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff0072FF),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          startTimer();
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
