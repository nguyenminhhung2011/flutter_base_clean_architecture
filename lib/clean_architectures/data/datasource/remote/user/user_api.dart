import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api.g.dart';

@injectable
@RestApi()
abstract class UserApi {
  static const String reportTutorApi = "/report";
  static const String bookAndCancelTutor = "/booking";
  static const String updateStudentRequestApi =
      "$bookAndCancelTutor/student-request";

  @factoryMethod
  factory UserApi(Dio dio) = _UserApi;

  @POST(reportTutorApi)
  Future<HttpResponse> reportTutor(
      {@Body() required Map<String, dynamic> body});

  @POST(bookAndCancelTutor)
  Future<HttpResponse> bookingTutor(
      {@Body() required Map<String, dynamic> body});

  @DELETE(bookAndCancelTutor)
  Future<HttpResponse> cancelTutor(
      {@Body() required Map<String, dynamic> body});

  @POST("$updateStudentRequestApi/{booId}")
  Future<HttpResponse> updateStudentRequest(@Path('booId') String booId,
      {@Body() required Map<String, dynamic> body});
}
