import 'package:dwelleasy_ghana/clientScreen.dart/OurPlans/ClientPaymentScreen.dart';
import 'package:dwelleasy_ghana/core/constant/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Clientoursignupscreen extends StatefulWidget {
  const Clientoursignupscreen({super.key});

  @override
  State<Clientoursignupscreen> createState() => _ClientoursignupscreenState();
}

class _ClientoursignupscreenState extends State<Clientoursignupscreen> {
  TextEditingController dateController = TextEditingController();
  List<String> bedroomList = ["1-2", "3-4", "5+"];
  List<String> bathroomList = ["1", "2", "3+"];
  List<String> acList = ["0", "1-2", "3-4", "5+"];
  List<String> propertyTypeList = [
    "Detached house",
    "Semi-detached",
    "Apartment",
    "Townhouse",
  ];
  List<String> propertyAgeList = [
    "Less than 5 years",
    "5-15 years",
    "More than15 years",
  ];
  List<String> planTypeList = [
    "Plumbing only",
    "Electrical only",
    "Plumbing + Electrical",
    "Full Bundle(including AC)",
  ];
  List<String> planTypeList2 = [
    "Basic - 2 Call Out / Year",
    "Prmium(Unlimited call-outs)",
  ];
  List<String> paymentmethordList = [
    "Mobile Money(MTM)",
    "Mobile Money(Vodafone)",
    "Mobile Money(AirtelTigo)",
    "Bank Transfer",
    "Cash(office only)",
  ];
  List<String> facebookList = [
    "Facebook",
    "Instagram",
    "Friend",
    "Real Estate Agent",
    "Other",
  ];
  String? selectBedroom;
  String? selectBathroom;
  String? selectAc;
  String? selectPropertyType;
  String? selectPropertyAge;
  String? selectPlanType;
  String? selectPlanType2;
  String? selectfacebook;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungBg,
      appBar: AppBar(
        backgroundColor: AppColors.backgroungBg,
        centerTitle: true,
        leading: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 44.h,
              width: 44.w,
              padding: EdgeInsets.only(left: 5.w),
              margin: EdgeInsets.only(left: 16.w),
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
        title: Column(
          children: [
            Text(
              "Become a Dwell Easy Member",
              style: GoogleFonts.outfit(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                letterSpacing: -0.3,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "Fill in your details below to get Planed",
              style: GoogleFonts.parkinsans(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff000000),
                letterSpacing: -0.3,
              ),
            ),
          ],
        ),

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(thickness: 1, color: AppColors.buttonText),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.h),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Fill in your details below to get Planed.",
                  style: GoogleFonts.parkinsans(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.buttonText,
                    letterSpacing: -0.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 39.h),
              Text(
                "Section A: Personal Information",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                  letterSpacing: -0.3,
                ),
              ),
              SizedBox(height: 16.h),
              personalInformation(
                text: "Full Name",
                hinttext: "Enter Your Full name",
                keybordtype: TextInputType.name,
              ),
              SizedBox(height: 12.h),
              personalInformation(
                text: "Email Address",
                hinttext: "Enter Your Email",
                keybordtype: TextInputType.emailAddress,
              ),
              SizedBox(height: 12.h),
              personalInformation(
                text: "Phone Number",
                hinttext: "Enter Your Phone Number",
                keybordtype: TextInputType.phone,
                length: 10,
              ),
              SizedBox(height: 12.h),
              personalInformation(
                text: "Alternative Phone Number",
                hinttext: "Enter Your Phone Number",
                keybordtype: TextInputType.phone,
                length: 10,
              ),
              SizedBox(height: 12.h),
              personalInformation(
                text: "National ID",
                hinttext: "Enter Your Phone Number",
                keybordtype: TextInputType.phone,
                length: 12,
              ),
              SizedBox(height: 12.h),
              personalInformation(
                text: "Property Address",
                hinttext: ".......",
                keybordtype: TextInputType.multiline,
              ),
              SizedBox(height: 16.h),
              Text(
                "Section B: Property Details",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                  letterSpacing: -0.3,
                ),
              ),
              SizedBox(height: 16.h),
              propertyDetiles(
                listname: bedroomList,
                selectname: selectBedroom,
                onChanged: (value) {
                  setState(() {
                    selectBedroom = value;
                  });
                },
                hintText: "1-2",
                text: "Bedrooms",
              ),
              SizedBox(height: 16.h),
              propertyDetiles(
                listname: bathroomList,
                selectname: selectBathroom,
                onChanged: (value) {
                  setState(() {
                    selectBathroom = value;
                  });
                },
                hintText: "1",
                text: "Bathrooms",
              ),
              SizedBox(height: 16.h),
              propertyDetiles(
                listname: acList,
                selectname: selectAc,
                onChanged: (value) {
                  setState(() {
                    selectAc = value;
                  });
                },
                hintText: "0",
                text: "AC Units",
              ),
              SizedBox(height: 16.h),
              propertyDetiles(
                listname: propertyTypeList,
                selectname: selectPropertyType,
                onChanged: (value) {
                  setState(() {
                    selectPropertyType = value;
                  });
                },
                hintText: "Detached House",
                text: "Property Type",
              ),
              SizedBox(height: 16.h),
              propertyDetiles(
                listname: propertyAgeList,
                selectname: selectPropertyAge,
                onChanged: (value) {
                  setState(() {
                    selectPropertyAge = value;
                  });
                },
                hintText: "Less Than 5 year",
                text: "Property Age",
              ),
              SizedBox(height: 16.h),
              Text(
                "Section C: Choose Your Plan",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                  letterSpacing: -0.3,
                ),
              ),
              SizedBox(height: 16.h),
              chooseYourPlan(
                listname: planTypeList,
                selectname: selectPlanType,
                onChanged: (value) {
                  setState(() {
                    selectPlanType = value;
                  });
                },
                hintText: "Plumber",
                text: "Plan Type",
              ),
              SizedBox(height: 16.h),
              chooseYourPlan(
                listname: planTypeList2,
                selectname: selectPlanType2,
                onChanged: (value) {
                  setState(() {
                    selectPlanType2 = value;
                  });
                },
                hintText: "Basic (2 Call-Outs/Year)",
                text: "Plan Type",
              ),
              SizedBox(height: 16.h),
              Text(
                "Section D: Payment & Billing",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                  letterSpacing: -0.3,
                ),
              ),
              SizedBox(height: 16.h),
              chooseYourPlan(
                listname: planTypeList2,
                selectname: selectPlanType2,
                onChanged: (value) {
                  setState(() {
                    selectPlanType2 = value;
                  });
                },
                hintText: "Mobile Money (MTN)",
                text: "Payment Method",
              ),
              SizedBox(height: 16.h),
              personalInformation(
                text: "Mobile Money Number",
                hinttext: "",
                keybordtype: TextInputType.number,
              ),
              SizedBox(height: 16.h),
              personalInformation(
                text: "Preferred Billing Date",
                hinttext: "1",
                keybordtype: TextInputType.number,
                icon: Icon(Icons.date_range, color: AppColors.buttonText),
              ),
              SizedBox(height: 16.h),
              chooseYourPlan(
                listname: facebookList,
                selectname: selectfacebook,
                onChanged: (value) {
                  setState(() {
                    selectfacebook = value;
                  });
                },
                hintText: "Facebook",
                text: "How did you hear about us?",
              ),
              SizedBox(height: 16.h),
              Text(
                "Section E: Declaration",
                style: GoogleFonts.outfit(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.buttonText,
                  letterSpacing: -0.3,
                ),
              ),
              SizedBox(height: 16.h),
              customCheckBox("I confirm all information is accurate", 0),
              customCheckBox("Planage starts after 14 days", 1),
              customCheckBox("I agree to Terms & Conditions", 2),
              customCheckBox(" No pre-existing faults", 3),
              SizedBox(height: 16.h),
              personalInformation(
                text: "Electronic Signature",
                hinttext: "Type your Name",
                keybordtype: TextInputType.name,
              ),
              SizedBox(height: 16.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date",
                    style: GoogleFonts.outfit(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff777676),
                      letterSpacing: -0.3,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "dd-mm-yy",
                      suffixIcon: InkWell(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );

                          if (pickedDate != null) {
                            dateController.text =
                                "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
                          }
                        },
                        child: Icon(
                          Icons.date_range,
                          color: AppColors.buttonText,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: AppColors.buttonText),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: AppColors.buttonText),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(color: AppColors.buttonText),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              SizedBox(
                width: double.infinity,
                height: 48.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.buttonBg,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(100.r),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Clientpaymentscreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Submit Application",
                    style: GoogleFonts.outfit(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.buttonText,
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}

Widget personalInformation({
  required String text,
  required String hinttext,
  required keybordtype,
  int? length,
  Widget? icon,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff777676),
          letterSpacing: -0.3,
        ),
      ),
      SizedBox(height: 8.h),
      TextField(
        keyboardType: keybordtype,
        maxLength: length,
        cursorColor: Colors.black,
        cursorHeight: 17,
        decoration: InputDecoration(
          isDense: true,
          suffixIcon: icon,
          counterText: "",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: AppColors.buttonText),
          ),
          hint: Text(
            hinttext,
            style: GoogleFonts.parkinsans(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(87, 87, 87, 0.6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: AppColors.buttonText),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(color: AppColors.buttonText),
          ),
        ),
      ),
    ],
  );
}

Widget propertyDetiles({
  required List<String> listname,
  required String? selectname,
  required ValueChanged<String?> onChanged,
  required String hintText,
  required String text,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff777676),
          letterSpacing: -0.3,
        ),
      ),
      SizedBox(height: 8.h),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.buttonText),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectname,
            isExpanded: true,
            dropdownColor: AppColors.backgroungBg,
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.buttonText,
              size: 25.sp,
            ),
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                hintText,
                style: GoogleFonts.parkinsans(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff989897),
                ),
              ),
            ),
            style: GoogleFonts.outfit(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.buttonText,
            ),
            items: listname.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(item),
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    ],
  );
}

Widget chooseYourPlan({
  required List<String> listname,
  required String? selectname,
  required ValueChanged<String?> onChanged,
  required String hintText,
  required String text,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: GoogleFonts.outfit(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Color(0xff777676),
          letterSpacing: -0.3,
        ),
      ),
      SizedBox(height: 8.h),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.buttonText),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectname,
            isExpanded: true,
            dropdownColor: AppColors.backgroungBg,
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.buttonText,
              size: 25.sp,
            ),
            hint: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                hintText,
                style: GoogleFonts.parkinsans(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff989897),
                ),
              ),
            ),
            style: GoogleFonts.outfit(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.buttonText,
            ),
            items: listname.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(item),
                ),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    ],
  );
}

bool isCheck = false;

Widget customCheckBox(String title, int index) {
  return StatefulBuilder(
    builder: (context, setState) {
      return Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.outfit(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xffA3A3A3),
              ),
            ),
          ),
          Checkbox(
            value: isCheck,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
            onChanged: (value) {
              setState(() {
                isCheck = value!;
              });
            },
          ),
          SizedBox(width: 100.w),
        ],
      );
    },
  );
}
