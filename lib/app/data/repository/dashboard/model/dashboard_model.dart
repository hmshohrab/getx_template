import 'dart:convert';

import '../../../../core/model/data_response.dart';

/// CurrentPassword : "12345"
/// NewPassword : "54321"
/// RetypePassword : "54321"

DashboardModel dashboardModelFromJson(String str) =>
    DashboardModel.fromJson(json.decode(str));

String dashboardModelToJson(DashboardModel data) => json.encode(data.toJson());

class DashboardModel extends Serializable {
  DashboardModel({
    String? currentPassword,
    String? newPassword,
    String? retypePassword,
  }) {
    _currentPassword = currentPassword;
    _newPassword = newPassword;
    _retypePassword = retypePassword;
  }

  DashboardModel.fromJson(dynamic json) {
    _currentPassword = json['CurrentPassword'];
    _newPassword = json['NewPassword'];
    _retypePassword = json['RetypePassword'];
  }

  String? _currentPassword;
  String? _newPassword;
  String? _retypePassword;

  DashboardModel copyWith({
    String? currentPassword,
    String? newPassword,
    String? retypePassword,
  }) =>
      DashboardModel(
        currentPassword: currentPassword ?? _currentPassword,
        newPassword: newPassword ?? _newPassword,
        retypePassword: retypePassword ?? _retypePassword,
      );

  String? get currentPassword => _currentPassword;

  String? get newPassword => _newPassword;

  String? get retypePassword => _retypePassword;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['CurrentPassword'] = _currentPassword;
    map['NewPassword'] = _newPassword;
    map['RetypePassword'] = _retypePassword;
    return map;
  }
}
