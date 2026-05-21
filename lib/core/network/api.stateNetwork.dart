import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dwelleasy_ghana/data/model/createLeaveRequestBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/createLeaveRequestResModel.dart';
import 'package:dwelleasy_ghana/data/model/forgotPasswordBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/forgotPasswordResModel.dart';
import 'package:dwelleasy_ghana/data/model/getMyLeaveModel.dart';
import 'package:dwelleasy_ghana/data/model/getProfileModel.dart';
import 'package:dwelleasy_ghana/data/model/getServiceResModel.dart';
import 'package:dwelleasy_ghana/data/model/loginBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/loginResModel.dart';
import 'package:dwelleasy_ghana/data/model/registerBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/registerResModel.dart';
import 'package:dwelleasy_ghana/data/model/updateProfileBodyModel.dart';
import 'package:dwelleasy_ghana/data/model/updateProfileResModel.dart';
import 'package:dwelleasy_ghana/data/model/uploadImageResModel.dart';
import 'package:dwelleasy_ghana/data/model/verifyOrCreatePasswordBody.dart';
import 'package:dwelleasy_ghana/data/model/verifyOrCreatePasswordRes.dart';
import 'package:retrofit/retrofit.dart';

part 'api.stateNetwork.g.dart';

@RestApi(baseUrl: "http://192.168.1.43:4567")
// @RestApi(baseUrl: "http://192.168.1.59:4567") ///// kamls sir laptop local url
// @RestApi(baseUrl: "https://qnr9g6df-4567.inc1.devtunnels.ms")
abstract class ApiStateNetwork {
  factory ApiStateNetwork(Dio dio, {String baseUrl}) = _ApiStateNetwork;

  @GET("/api/v1/employee/get-services")
  Future<GetServiceResModel> getAllService();

  @POST("/api/v1/employee/register")
  Future<RegisterResModel> employeeRegister(@Body() RegisterBodyModel body);

  @POST("/api/v1/employee/login")
  Future<LoginResModel> loginEmployee(@Body() LoginBodyModel body);

  @POST("/api/v1/employee/forgot-password")
  Future<ForgotPasswordResModel> forgotPassword(
    @Body() ForgotPasswordBodyModel body,
  );

  @POST("/api/v1/employee/forgot-password-verify")
  Future<VerifyOrCreatePasswordRes> verifyOrCreateNewPassword(
    @Body() VerifyOrCreatePasswordBody body,
  );

  @GET("/api/v1/employee/get-profile")
  Future<GetProfileModel> getProfile();

  @MultiPart()
  @POST("/api/v1/uploadImage")
  Future<UploadImageResModel> uploadImage(@Part(name: "file") File file);

  @PUT("/api/v1/employee/update-profile")
  Future<UpdateProfileResModel> updateProfile(
    @Body() UpdateProfileBodyModel body,
  );

  @POST("/api/v1/employee/create-leave-request")
  Future<CreateLeaveRquestResModel> createLeaveRequest(
    @Body() CreateLeaveRquestBodyModel body,
  );

  @GET("/api/v1/employee/get-my-leave-requests?page=1&limit=10")
  Future<GetMyLeaveModel> myLeaveRequest();
}
