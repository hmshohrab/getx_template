import 'data_response.dart';

class ListResponse<T extends Serializable> {
  ListResponse({
    dynamic message,
    List<T>? responseObj,
    num? statusCode,
    String? token,
  }) {
    _message = message;
    _responseObj = responseObj;
    _statusCode = statusCode;
    _token = token;
  }

  ListResponse.fromJson(dynamic json, Function() create) {
    _message = json?['Message'];
    _responseObj = create();
    _statusCode = json?['StatusCode'];
    _token = json?['Token'];
  }

  dynamic _message;
  List<T>? _responseObj;
  num? _statusCode;
  String? _token;

  ListResponse copyWith({
    dynamic message,
    List<T>? responseObj,
    num? statusCode,
    String? token,
  }) =>
      ListResponse(
        message: message ?? _message,
        responseObj: responseObj ?? _responseObj,
        statusCode: statusCode ?? _statusCode,
        token: token ?? _token,
      );

  dynamic get message => _message;

  List<T>? get responseObj => _responseObj;

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
