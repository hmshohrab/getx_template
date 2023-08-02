import '../../../safe_convert.dart';

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
