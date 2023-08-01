

import 'package:getx_template/app/core/core.dart';

import '../../../../../safe_convert.dart';

class LiveLocationModel extends Serializable {
  // 548509
  final int LocationHistoryID;
  // 2
  final int OperationID;
  // 98
  final int UserAutoID;
  // 2023-07-04T12:20:13.2052313+06:00
  final String HistoryDate;
  // 6.1
  final double Latitude;
  // 7.1
  final double Longitude;
  // 2023-07-04T11:43:30.8155724+06:00
  final String GPSReceiveDate;

  LiveLocationModel({
    this.LocationHistoryID = 0,
    this.OperationID = 0,
    this.UserAutoID = 0,
    this.HistoryDate = "",
    this.Latitude = 0.0,
    this.Longitude = 0.0,
    this.GPSReceiveDate = "",
  });

  factory LiveLocationModel.fromJson(Map<String, dynamic>? json) => LiveLocationModel(
    LocationHistoryID: asT<int>(json, 'LocationHistoryID'),
    OperationID: asT<int>(json, 'OperationID'),
    UserAutoID: asT<int>(json, 'UserAutoID'),
    HistoryDate: asT<String>(json, 'HistoryDate'),
    Latitude: asT<double>(json, 'Latitude'),
    Longitude: asT<double>(json, 'Longitude'),
    GPSReceiveDate: asT<String>(json, 'GPSReceiveDate'),
  );

  Map<String, dynamic> toJson() => {
    'LocationHistoryID': LocationHistoryID,
    'OperationID': OperationID,
    'UserAutoID': UserAutoID,
    'HistoryDate': HistoryDate,
    'Latitude': Latitude,
    'Longitude': Longitude,
    'GPSReceiveDate': GPSReceiveDate,
  };
}

