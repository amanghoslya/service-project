import 'dart:developer';
import 'dart:io';
import 'package:dwelleasy_ghana/core/network/api.stateNetwork.dart';
import 'package:dwelleasy_ghana/core/utils/showMessage.dart';
import 'package:dwelleasy_ghana/data/model/createLeaveRequestBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/createLeaveRequestResModel.dart';
import 'package:dwelleasy_ghana/data/model/forgotPasswordBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/forgotPasswordResModel.dart';
import 'package:dwelleasy_ghana/data/model/getMyLeaveModel.dart';
import 'package:dwelleasy_ghana/data/model/getProfileModel.dart';
import 'package:dwelleasy_ghana/data/model/getServiceResModel.dart';
import 'package:dwelleasy_ghana/data/model/loginBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/registerBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/updateProfileBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/updateProfileResModel.dart';
import 'package:dwelleasy_ghana/data/model/verifyOrCreatePasswordBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class AuthService {
  final ApiStateNetwork api;

  AuthService(this.api);

  Future<GetServiceResModel> getAllService() async {
    try {
      final response = await api.getAllService();
      if (response.code == 0 && response.error == false) {
        return response;
      }
      return response;
    } catch (e, st) {
      throw Exception(e.toString());
    }
  }

  Future<bool> employeeLogin({
    required String email,
    required String password,
    String? deviceId,
    required BuildContext context,
  }) async {
    try {
      final body = LoginBodyModel(
        email: email,
        password: password,
        deviceId: deviceId,
      );
      final response = await api.loginEmployee(body);
      if (response.code == 0 && response.error == false) {
        log(response.message ?? "Login Success");
        final box = Hive.box("userbox");
        await box.put("token", response.data?.token ?? "");
        await box.put("id", response.data?.id ?? "");
      }
      return true;
    } catch (e, st) {
      log("LOGIN ERROR => $e");
      log("STACK TRACE => $st");
      return false;
    }
  }

  Future<bool> registerEmployee({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String serviceId,
    required String password,
    String? deviceId,
    required BuildContext context,
  }) async {
    try {
      final body = RegisterBodyModel(
        fullName: fullName,
        email: email,
        phone: phoneNumber,
        password: password,
        serviceId: serviceId,
        deviceId: deviceId,
      );
      final response = await api.employeeRegister(body);
      if (response.code == 0 && response.error == false) {
        log(response.message ?? "Success");
      }
      return true;
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      return false;
    }
  }

  Future<GetProfileModel> getProfile() async {
    try {
      final response = await api.getProfile();
      if (response.error == false && response.code == 1) {
        return response;
      }
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<UpdateProfileResModel?> updateProfile({
    File? uploadImage,
    required String fullName,
    required String phone,
    required String city,
    required String address,
    required String experience,
    required String availability,
    required String serviceId,
    required BuildContext context,
  }) async {
    try {
      String imageUrl = "";
      if (uploadImage != null) {
        final uploadResponse = await api.uploadImage(uploadImage);

        if (uploadResponse.code == 0 && uploadResponse.error == false) {
          imageUrl = uploadResponse.data?.imageUrl ?? "";
        }
      }

      // final uploadResponse = await api.uploadImage(uploadImage);
      // if (uploadResponse.code == 0 && uploadResponse.error == false) {
      //   imageUrl = uploadResponse.data?.imageUrl ?? "";
      // }
      final body = UpdateProfileBodyModel(
        fullName: fullName,
        phone: phone,
        city: city,
        address: address,
        experience: experience,
        availability: availability,
        image: imageUrl,
        serviceId: serviceId,
      );
      final profileResponse = await api.updateProfile(body);
      if (profileResponse.code == 0 && profileResponse.error == false) {
        return profileResponse;
      }
      return profileResponse;
    } catch (e, st) {
      log(e.toString());
      log(st.toString());
      showErrorMessage(context: context, message: e.toString());
      return null;
    }
  }

  Future<ForgotPasswordResModel> forgotPassword({
    required String email,
    required BuildContext context,
  }) async {
    try {
      final body = ForgotPasswordBodyModel(email: email);
      final response = await api.forgotPassword(body);
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<bool> verifyOrCreatePassword({
    required String token,
    required String otp,
    required String password,
    required String confirmpassword,
    required BuildContext context,
  }) async {
    try {
      final body = VerifyOrCreatePasswordBody(
        token: token,
        otp: otp,
        password: password,
        confirmPassword: confirmpassword,
      );
      final response = await api.verifyOrCreateNewPassword(body);
      if (response.code == 0 && response.error == false) {
        log(response.message ?? "Sucess");
        showSuccessMessage(
          context: context,
          message: "Password Update Successfully",
        );
        return true;
      }
      return true;
    } catch (e, st) {
      log(st.toString());
      return false;
    }
  }

  Future<ForgotPasswordResModel?> resendPassword({
    required String email,
    required BuildContext context,
  }) async {
    try {
      final body = ForgotPasswordBodyModel(email: email);
      final response = await api.forgotPassword(body);
      if (response.code == 0 && response.error == false) {
        log(response.message ?? "Sucess");
        return response;
      }
    } catch (e, st) {
      log(st.toString());
      return null;
    }
  }

  Future<CreateLeaveRquestResModel?> createLeaveRequest({
    required int date,
    required String reason,
  }) async {
    try {
      final body = CreateLeaveRquestBodyModel(leaveDate: date, reason: reason);
      final response = await api.createLeaveRequest(body);
      if (response.code == 0 && response.error == false) {
        return response;
      }
      return response;
    } catch (e) {
      return null;
    }
  }

  Future<GetMyLeaveModel> fetchAllLeave() async {
    try {
      final response = await api.myLeaveRequest();
      if (response.error == false && response.code == 1) {
        return response;
      }
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
