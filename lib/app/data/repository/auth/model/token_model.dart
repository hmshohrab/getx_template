import 'dart:convert';

import 'package:getx_template/app/data/repository/auth/model/user_model.dart';
/// ResponseMessageID : 0
/// ResponseObj : {"Token":"ccHUwzL1oOHFDwRMhIjkCR3zXPsfKOmAZ2umEnbMIE5/l65PhSn81+ULcdvmmdIW","Status":1,"UserID":"dhakaMigEntry","CreatedDate":"2023-07-11T16:24:46.938271+06:00","TokenExpirationTime":"2023-07-11T17:09:46.938271+06:00","MenuString":null}
/// Message : "Login successfully"
/// StatusCode : 1
/// Token : "ccHUwzL1oOHFDwRMhIjkCR3zXPsfKOmAZ2umEnbMIE5/l65PhSn81+ULcdvmmdIW"
/// OrganizationID : 0
/// OrganizationName : null
/// OrganizationNameBangla : null
/// OrganizationAddress : null
/// WorkingUnitID : 0
/// WorkingUnitName : null
/// WorkingUnitAddress : null
/// DistrictID : 48
/// DistrictName : "Dhaka"
/// DistrictNameBangla : "ঢাকা"
/// UserAutoID : 1960

TokenModel tokenModelFromJson(String str) => TokenModel.fromJson(json.decode(str));
String tokenModelToJson(TokenModel data) => json.encode(data.toJson());
class TokenModel {
  TokenModel({
      int? responseMessageID,
    UserModel? responseObj,
      String? message, 
      int? statusCode, 
      String? token, 
      int? organizationID, 
      dynamic organizationName, 
      dynamic organizationNameBangla, 
      dynamic organizationAddress, 
      int? workingUnitID, 
      dynamic workingUnitName, 
      dynamic workingUnitAddress, 
      int? districtID, 
      String? districtName, 
      String? districtNameBangla, 
      int? userAutoID,}){
    _responseMessageID = responseMessageID;
    _responseObj = responseObj;
    _message = message;
    _statusCode = statusCode;
    _token = token;
    _organizationID = organizationID;
    _organizationName = organizationName;
    _organizationNameBangla = organizationNameBangla;
    _organizationAddress = organizationAddress;
    _workingUnitID = workingUnitID;
    _workingUnitName = workingUnitName;
    _workingUnitAddress = workingUnitAddress;
    _districtID = districtID;
    _districtName = districtName;
    _districtNameBangla = districtNameBangla;
    _userAutoID = userAutoID;
}

  TokenModel.fromJson(dynamic json) {
    _responseMessageID = json['ResponseMessageID'];
    _responseObj = json['ResponseObj'] != null ? UserModel.fromJson(json['ResponseObj']) : null;
    _message = json['Message'];
    _statusCode = json['StatusCode'];
    _token = json['Token'];
    _organizationID = json['OrganizationID'];
    _organizationName = json['OrganizationName'];
    _organizationNameBangla = json['OrganizationNameBangla'];
    _organizationAddress = json['OrganizationAddress'];
    _workingUnitID = json['WorkingUnitID'];
    _workingUnitName = json['WorkingUnitName'];
    _workingUnitAddress = json['WorkingUnitAddress'];
    _districtID = json['DistrictID'];
    _districtName = json['DistrictName'];
    _districtNameBangla = json['DistrictNameBangla'];
    _userAutoID = json['UserAutoID'];
  }
  int? _responseMessageID;
  UserModel? _responseObj;
  String? _message;
  int? _statusCode;
  String? _token;
  int? _organizationID;
  dynamic _organizationName;
  dynamic _organizationNameBangla;
  dynamic _organizationAddress;
  int? _workingUnitID;
  dynamic _workingUnitName;
  dynamic _workingUnitAddress;
  int? _districtID;
  String? _districtName;
  String? _districtNameBangla;
  int? _userAutoID;
TokenModel copyWith({  int? responseMessageID,
  UserModel? responseObj,
  String? message,
  int? statusCode,
  String? token,
  int? organizationID,
  dynamic organizationName,
  dynamic organizationNameBangla,
  dynamic organizationAddress,
  int? workingUnitID,
  dynamic workingUnitName,
  dynamic workingUnitAddress,
  int? districtID,
  String? districtName,
  String? districtNameBangla,
  int? userAutoID,
}) => TokenModel(  responseMessageID: responseMessageID ?? _responseMessageID,
  responseObj: responseObj ?? _responseObj,
  message: message ?? _message,
  statusCode: statusCode ?? _statusCode,
  token: token ?? _token,
  organizationID: organizationID ?? _organizationID,
  organizationName: organizationName ?? _organizationName,
  organizationNameBangla: organizationNameBangla ?? _organizationNameBangla,
  organizationAddress: organizationAddress ?? _organizationAddress,
  workingUnitID: workingUnitID ?? _workingUnitID,
  workingUnitName: workingUnitName ?? _workingUnitName,
  workingUnitAddress: workingUnitAddress ?? _workingUnitAddress,
  districtID: districtID ?? _districtID,
  districtName: districtName ?? _districtName,
  districtNameBangla: districtNameBangla ?? _districtNameBangla,
  userAutoID: userAutoID ?? _userAutoID,
);
  int? get responseMessageID => _responseMessageID;
  UserModel? get responseObj => _responseObj;
  String? get message => _message;
  int? get statusCode => _statusCode;
  String? get token => _token;
  int? get organizationID => _organizationID;
  dynamic get organizationName => _organizationName;
  dynamic get organizationNameBangla => _organizationNameBangla;
  dynamic get organizationAddress => _organizationAddress;
  int? get workingUnitID => _workingUnitID;
  dynamic get workingUnitName => _workingUnitName;
  dynamic get workingUnitAddress => _workingUnitAddress;
  int? get districtID => _districtID;
  String? get districtName => _districtName;
  String? get districtNameBangla => _districtNameBangla;
  int? get userAutoID => _userAutoID;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ResponseMessageID'] = _responseMessageID;
    if (_responseObj != null) {
      map['ResponseObj'] = _responseObj?.toJson();
    }
    map['Message'] = _message;
    map['StatusCode'] = _statusCode;
    map['Token'] = _token;
    map['OrganizationID'] = _organizationID;
    map['OrganizationName'] = _organizationName;
    map['OrganizationNameBangla'] = _organizationNameBangla;
    map['OrganizationAddress'] = _organizationAddress;
    map['WorkingUnitID'] = _workingUnitID;
    map['WorkingUnitName'] = _workingUnitName;
    map['WorkingUnitAddress'] = _workingUnitAddress;
    map['DistrictID'] = _districtID;
    map['DistrictName'] = _districtName;
    map['DistrictNameBangla'] = _districtNameBangla;
    map['UserAutoID'] = _userAutoID;
    return map;
  }

}

/// Token : "ccHUwzL1oOHFDwRMhIjkCR3zXPsfKOmAZ2umEnbMIE5/l65PhSn81+ULcdvmmdIW"
/// Status : 1
/// UserID : "dhakaMigEntry"
/// CreatedDate : "2023-07-11T16:24:46.938271+06:00"
/// TokenExpirationTime : "2023-07-11T17:09:46.938271+06:00"
/// MenuString : null

ResponseObj responseObjFromJson(String str) => ResponseObj.fromJson(json.decode(str));
String responseObjToJson(ResponseObj data) => json.encode(data.toJson());
class ResponseObj {
  ResponseObj({
      String? token, 
      int? status, 
      String? userID, 
      String? createdDate, 
      String? tokenExpirationTime, 
      dynamic menuString,}){
    _token = token;
    _status = status;
    _userID = userID;
    _createdDate = createdDate;
    _tokenExpirationTime = tokenExpirationTime;
    _menuString = menuString;
}

  ResponseObj.fromJson(dynamic json) {
    _token = json['Token'];
    _status = json['Status'];
    _userID = json['UserID'];
    _createdDate = json['CreatedDate'];
    _tokenExpirationTime = json['TokenExpirationTime'];
    _menuString = json['MenuString'];
  }
  String? _token;
  int? _status;
  String? _userID;
  String? _createdDate;
  String? _tokenExpirationTime;
  dynamic _menuString;
ResponseObj copyWith({  String? token,
  int? status,
  String? userID,
  String? createdDate,
  String? tokenExpirationTime,
  dynamic menuString,
}) => ResponseObj(  token: token ?? _token,
  status: status ?? _status,
  userID: userID ?? _userID,
  createdDate: createdDate ?? _createdDate,
  tokenExpirationTime: tokenExpirationTime ?? _tokenExpirationTime,
  menuString: menuString ?? _menuString,
);
  String? get token => _token;
  int? get status => _status;
  String? get userID => _userID;
  String? get createdDate => _createdDate;
  String? get tokenExpirationTime => _tokenExpirationTime;
  dynamic get menuString => _menuString;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Token'] = _token;
    map['Status'] = _status;
    map['UserID'] = _userID;
    map['CreatedDate'] = _createdDate;
    map['TokenExpirationTime'] = _tokenExpirationTime;
    map['MenuString'] = _menuString;
    return map;
  }

}