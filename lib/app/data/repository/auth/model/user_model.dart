import 'dart:convert';
/// Token : "ccHUwzL1oOHFDwRMhIjkCR3zXPsfKOmAZ2umEnbMIE5/l65PhSn81+ULcdvmmdIW"
/// Status : 1
/// UserID : "dhakaMigEntry"
/// CreatedDate : "2023-07-11T16:24:46.938271+06:00"
/// TokenExpirationTime : "2023-07-11T17:09:46.938271+06:00"
/// MenuString : null
/// Permissions : [{"PermissionName":"applicationMigrationRawDataAdd","DisplayName":"Data Migration Raw Data Add","GroupID":23,"IsPrimaryGroup":false,"IsActive":false,"PermissionType":2},{"PermissionName":"applicationMigrationRawDataManualTab","DisplayName":"Data Migration Raw Data Manual Tab","GroupID":23,"IsPrimaryGroup":false,"IsActive":false,"PermissionType":2},{"PermissionName":"dashboardMigration","DisplayName":"Dashboard Migration","GroupID":1,"IsPrimaryGroup":false,"IsActive":false,"PermissionType":2},{"PermissionName":"applicationMigrationRawDataSendForVerification","DisplayName":"Data Migration Raw Data Send For Verification","GroupID":23,"IsPrimaryGroup":false,"IsActive":false,"PermissionType":2},{"PermissionName":"applicationMigrationRawDataDelete","DisplayName":"Data Migration Raw Data Delete","GroupID":23,"IsPrimaryGroup":false,"IsActive":false,"PermissionType":2}]
/// AccessRight : 21
/// FullName : "DHAKA MIGRATION ENTRY"
/// UserType : 0

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
String userModelToJson(UserModel data) => json.encode(data.toJson());
class UserModel {
  UserModel({
      String? token, 
      int? status, 
      String? userID, 
      String? createdDate, 
      String? tokenExpirationTime, 
      dynamic menuString, 
      List<Permissions>? permissions, 
      int? accessRight, 
      String? fullName,
    int? userAutoID,
    int? userType,}){
    _token = token;
    _status = status;
    _userID = userID;
    _createdDate = createdDate;
    _tokenExpirationTime = tokenExpirationTime;
    _menuString = menuString;
    _permissions = permissions;
    _accessRight = accessRight;
    _fullName = fullName;
    _userAutoID = userAutoID;
    _userType = userType;
}

  UserModel.fromJson(dynamic json) {
    _token = json['Token'];
    _status = json['Status'];
    _userID = json['UserID'];
    _createdDate = json['CreatedDate'];
    _tokenExpirationTime = json['TokenExpirationTime'];
    _menuString = json['MenuString'];
    if (json['Permissions'] != null) {
      _permissions = [];
      json['Permissions'].forEach((v) {
        _permissions?.add(Permissions.fromJson(v));
      });
    }
    _accessRight = json['AccessRight'];
    _fullName = json['FullName'];
    _userAutoID= json['UserAutoID'];
    _userType = json['UserType'];
  }
  String? _token;
  int? _status;
  String? _userID;
  String? _createdDate;
  String? _tokenExpirationTime;
  dynamic _menuString;
  List<Permissions>? _permissions;
  int? _accessRight;
  String? _fullName;
  int? _userAutoID;
  int? _userType;
UserModel copyWith({  String? token,
  int? status,
  String? userID,
  String? createdDate,
  String? tokenExpirationTime,
  dynamic menuString,
  List<Permissions>? permissions,
  int? accessRight,
  String? fullName,
  int? userAutoID,
  int? userType,
}) => UserModel(  token: token ?? _token,
  status: status ?? _status,
  userID: userID ?? _userID,
  createdDate: createdDate ?? _createdDate,
  tokenExpirationTime: tokenExpirationTime ?? _tokenExpirationTime,
  menuString: menuString ?? _menuString,
  permissions: permissions ?? _permissions,
  accessRight: accessRight ?? _accessRight,
  fullName: fullName ?? _fullName,
  userAutoID: userAutoID ?? _userAutoID,
  userType: userType ?? _userType,
);
  String? get token => _token;
  int? get status => _status;
  String? get userID => _userID;
  String? get createdDate => _createdDate;
  String? get tokenExpirationTime => _tokenExpirationTime;
  dynamic get menuString => _menuString;
  List<Permissions>? get permissions => _permissions;
  int? get accessRight => _accessRight;
  String? get fullName => _fullName;
  int? get userAutoID => _userAutoID;
  int? get userType => _userType;

  void currentUserAutoID(int value) {
    _userAutoID = value;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Token'] = _token;
    map['Status'] = _status;
    map['UserID'] = _userID;
    map['CreatedDate'] = _createdDate;
    map['TokenExpirationTime'] = _tokenExpirationTime;
    map['MenuString'] = _menuString;
    if (_permissions != null) {
      map['Permissions'] = _permissions?.map((v) => v.toJson()).toList();
    }
    map['AccessRight'] = _accessRight;
    map['FullName'] = _fullName;
    map['UserAutoID'] = _userAutoID;
    map['UserType'] = _userType;
    return map;
  }

}

/// PermissionName : "applicationMigrationRawDataAdd"
/// DisplayName : "Data Migration Raw Data Add"
/// GroupID : 23
/// IsPrimaryGroup : false
/// IsActive : false
/// PermissionType : 2

Permissions permissionsFromJson(String str) => Permissions.fromJson(json.decode(str));
String permissionsToJson(Permissions data) => json.encode(data.toJson());
class Permissions {
  Permissions({
      String? permissionName, 
      String? displayName, 
      int? groupID, 
      bool? isPrimaryGroup, 
      bool? isActive, 
      int? permissionType,}){
    _permissionName = permissionName;
    _displayName = displayName;
    _groupID = groupID;
    _isPrimaryGroup = isPrimaryGroup;
    _isActive = isActive;
    _permissionType = permissionType;
}

  Permissions.fromJson(dynamic json) {
    _permissionName = json['PermissionName'];
    _displayName = json['DisplayName'];
    _groupID = json['GroupID'];
    _isPrimaryGroup = json['IsPrimaryGroup'];
    _isActive = json['IsActive'];
    _permissionType = json['PermissionType'];
  }
  String? _permissionName;
  String? _displayName;
  int? _groupID;
  bool? _isPrimaryGroup;
  bool? _isActive;
  int? _permissionType;
Permissions copyWith({  String? permissionName,
  String? displayName,
  int? groupID,
  bool? isPrimaryGroup,
  bool? isActive,
  int? permissionType,
}) => Permissions(  permissionName: permissionName ?? _permissionName,
  displayName: displayName ?? _displayName,
  groupID: groupID ?? _groupID,
  isPrimaryGroup: isPrimaryGroup ?? _isPrimaryGroup,
  isActive: isActive ?? _isActive,
  permissionType: permissionType ?? _permissionType,
);
  String? get permissionName => _permissionName;
  String? get displayName => _displayName;
  int? get groupID => _groupID;
  bool? get isPrimaryGroup => _isPrimaryGroup;
  bool? get isActive => _isActive;
  int? get permissionType => _permissionType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PermissionName'] = _permissionName;
    map['DisplayName'] = _displayName;
    map['GroupID'] = _groupID;
    map['IsPrimaryGroup'] = _isPrimaryGroup;
    map['IsActive'] = _isActive;
    map['PermissionType'] = _permissionType;
    return map;
  }

}