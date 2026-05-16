import 'dart:async';

import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  static const int totalSeconds = 30;

  int remainingSeconds = totalSeconds;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer?.cancel();
    remainingSeconds = totalSeconds;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
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
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        automaticallyImplyLeading: true,
        foregroundColor: Color(0xFFFFFFFF),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.cardBg,
                  ),
                  child: CircularProgressIndicator(
                    value: progress,
                    strokeWidth: 2.w,
                    backgroundColor: AppColors.cardBg,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
                  ),
                ),
                Text(
                  "${remainingSeconds}s",
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60.h),
            Container(
              width: 49.w,
              height: 49.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.buttonBg,
              ),
              child: Center(child: Image.asset("assets/lock.png")),
            ),
            SizedBox(height: 8.h),
            Text(
              "Enter OTP",
              style: GoogleFonts.inter(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFFFFFF),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              "Enter a 4 digit code sent to Ju***@example.com",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8D8D8D),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.h),
            OtpPinField(
              cursorColor: Colors.white,
              fieldWidth: 80.w,
              fieldHeight: 60.h,
              otpPinFieldDecoration:
                  OtpPinFieldDecoration.defaultPinBoxDecoration,
              otpPinFieldStyle: OtpPinFieldStyle(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
                activeFieldBackgroundColor: AppColors.cardBg,
                activeFieldBorderColor: Color.fromARGB(127, 255, 255, 255),
                defaultFieldBackgroundColor: Colors.transparent,
                defaultFieldBorderColor: Color.fromARGB(30, 255, 255, 255),
                filledFieldBackgroundColor: AppColors.cardBg,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              maxLength: 4,
              onSubmit: (text) {},
              onChange: (text) {},
            ),
            Spacer(),
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
                "Next",
                style: GoogleFonts.outfit(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Don't receive the code? ",
                    style: GoogleFonts.parkinsans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                  TextSpan(
                    text: "Resend",
                    style: GoogleFonts.parkinsans(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonBg,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.buttonBg,
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
    );
  }
}
