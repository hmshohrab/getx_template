import '../../../../core/model/data_response.dart';

class CheckModel extends Serializable {
  String? countryCode;
  String? mobileNo;
  String? type;
  int? testOtp;

  CheckModel({
    this.countryCode,
    this.mobileNo,
    this.type,
    this.testOtp,
  });

  CheckModel.fromJson(dynamic json) {
    countryCode = json['countryCode'];
    mobileNo = json['mobileNo'];
    type = json['type'];
    testOtp = json['testOtp'];
  }

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['countryCode'] = countryCode;
    map['mobileNo'] = mobileNo;
    map['type'] = type;
    map['testOtp'] = testOtp;
    return map;
  }
}
