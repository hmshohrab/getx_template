import 'dart:convert';

import 'package:getx_template/app/core/core.dart';
/// Total : 11
/// TotalComplete : 1
/// PartialAttached : 4

HomeDataModel homeDataModelFromJson(String str) => HomeDataModel.fromJson(json.decode(str));
String homeDataModelToJson(HomeDataModel data) => json.encode(data.toJson());
class HomeDataModel extends Serializable{
  HomeDataModel({
      int? total, 
      int? totalComplete, 
      int? partialAttached,}){
    _total = total;
    _totalComplete = totalComplete;
    _partialAttached = partialAttached;
}

  HomeDataModel.fromJson(dynamic json) {
    _total = json['Total'];
    _totalComplete = json['TotalComplete'];
    _partialAttached = json['PartialAttached'];
  }
  int? _total;
  int? _totalComplete;
  int? _partialAttached;
HomeDataModel copyWith({  int? total,
  int? totalComplete,
  int? partialAttached,
}) => HomeDataModel(  total: total ?? _total,
  totalComplete: totalComplete ?? _totalComplete,
  partialAttached: partialAttached ?? _partialAttached,
);
  int? get total => _total;
  int? get totalComplete => _totalComplete;
  int? get partialAttached => _partialAttached;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Total'] = _total;
    map['TotalComplete'] = _totalComplete;
    map['PartialAttached'] = _partialAttached;
    return map;
  }

}