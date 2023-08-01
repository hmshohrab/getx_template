import '../../../safe_convert.dart';

/// success : true
/// message : "Otp sent successfully"
/// data : {"countryCode":"880","mobileNo":"1744861789","type":"New","testOtp":64704}

/*
class DataResponse<T extends Serializable> {
  bool? _success = false;
  String? _message = "";
  T? _data;

  DataResponse({
    bool? success,
    String? message,
    T? data,
  }) {
    _success = success;
    _message = message;
    _data = data;
  }

  DataResponse.fromJson(Map<String, dynamic> json, Function() create) {
    _success = json['success'];
    _message = json['message'];
    _data = create();
  }

  DataResponse copyWith({
    bool? success,
    String? message,
    T? data,
  }) =>
      DataResponse(
        success: success ?? _success,
        message: message ?? _message,
        data: data ?? _data,
      );

  bool? get success => _success;

  String? get message => _message;

  T? get data => _data;

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data?.toJson(),
      };
}
*/

/// Message : null
/// ResponseObj : {"UserAutoID":1238,"UserName":"rangedigmymensingh","UserImage":null,"AccessRight":1,"AppsVersion":"V_2.3.0","DivisionID":4,"IsAllowBRMS":true}
/// StatusCode : 1
/// Token : "P3gETwBJbImt8uVU1vslaoqMQLuftQPOIX/UDJwd+x8aA1bEuB9xIYeVY+f5+aIonlCoiFrSyI3Sddy7Z/vH9t3p9UqGLloImdmc6lUNTGA1v5q13QcuBOePv9fEHcOYF+QYE6TjYJj+/6LMm2fewFxeJamRlCGd+yTlBDWeR0+9i2l273y+yak+P2lZ1rwCEE1xKhkGBDONAVA4lee9iFn+2FD2hGQehjPLWObjpHQk5ylHS5P8cH172Qwh/kplbpPEuSFqA1Dh8Cb2fMauBTQjJi9TZtMonMpXKDC/IPhNKemYkjWK/k1E0SHxCEhB5PKH4B7yy8QXX6/hHIJi2CFSDWFt+JMzfJg1iRMddauRsoA6Zgl6J3zhzeBX6Yty"

class DataResponse<T extends Serializable> {
  DataResponse({
    dynamic message,
    T? responseObj,
    num? statusCode,
    String? token,
  }) {
    _message = message;
    _responseObj = responseObj;
    _statusCode = statusCode;
    _token = token;
  }

  DataResponse.fromJson(dynamic json, Function() create) {
    _message = asT<dynamic>(json, 'Message');
    _responseObj = create();
    _statusCode = json?['StatusCode'];
    _token = json?['Token'];
  }

  dynamic _message;
  T? _responseObj;
  num? _statusCode;
  String? _token;

  DataResponse copyWith({
    dynamic message,
    T? responseObj,
    num? statusCode,
    String? token,
  }) =>
      DataResponse(
        message: message ?? _message,
        responseObj: responseObj ?? _responseObj,
        statusCode: statusCode ?? _statusCode,
        token: token ?? _token,
      );

  dynamic get message => _message;

  T? get responseObj => _responseObj;

  num? get statusCode => _statusCode;

  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Message'] = _message;
/*    if (_responseObj != null) {
      map['ResponseObj'] = _responseObj?.toJson();
    }*/
    map['StatusCode'] = _statusCode;
    map['Token'] = _token;
    return map;
  }
}

abstract class Serializable {
  Map<String, dynamic> toJson();
}

class MyModel implements Serializable {
  String? id;
  String? title;

  MyModel({this.id, this.title});

  factory MyModel.fromJson(Map<String, dynamic> json) {
    return MyModel(
      id: json["id"],
      title: json["title"],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
      };
}

/*class ApiResponse<T extends Serializable> {
  bool? status;
  String? message;
  T? data;

  ApiResponse({this.status, this.message, this.data});

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    return ApiResponse<T>(
      status: json["status"],
      message: json["message"],
      data: create(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class Test {
  test() {
    ApiResponse apiResponse = ApiResponse<MyModel>();
    var json = apiResponse.toJson();
    var response =
        ApiResponse<MyModel>.fromJson(json, (data) => MyModel.fromJson(data));
  }
}*/
