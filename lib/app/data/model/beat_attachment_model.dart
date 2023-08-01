import 'dart:convert';

import '../../core/model/data_response.dart';

/// Id : 850703
/// BeatVisitID : 406073
/// DocType : "Audio"
/// DocName : "1623_16042023154239441.wav"
/// DocFormat : ".wav"
/// IsMigrated : null
/// ImagePath : null

BeatAttachmentModel beatAttachmentModelFromJson(String str) =>
    BeatAttachmentModel.fromJson(json.decode(str));

String beatAttachmentModelToJson(BeatAttachmentModel data) =>
    json.encode(data.toJson());

class BeatAttachmentModel extends Serializable {
  BeatAttachmentModel({
    int? id,
    int? beatVisitID,
    String? docType,
    String? docName,
    String? docFormat,
    dynamic isMigrated,
    dynamic imagePath,
  }) {
    _id = id;
    _beatVisitID = beatVisitID;
    _docType = docType;
    _docName = docName;
    _docFormat = docFormat;
    _isMigrated = isMigrated;
    _imagePath = imagePath;
  }

  BeatAttachmentModel.fromJson(dynamic json) {
    _id = json['Id'];
    _beatVisitID = json['BeatVisitID'];
    _docType = json['DocType'];
    _docName = json['DocName'];
    _docFormat = json['DocFormat'];
    _isMigrated = json['IsMigrated'];
    _imagePath = json['ImagePath'];
  }

  int? _id;
  int? _beatVisitID;
  String? _docType;
  String? _docName;
  String? _docFormat;
  dynamic _isMigrated;
  dynamic _imagePath;

  BeatAttachmentModel copyWith({
    int? id,
    int? beatVisitID,
    String? docType,
    String? docName,
    String? docFormat,
    dynamic isMigrated,
    dynamic imagePath,
  }) =>
      BeatAttachmentModel(
        id: id ?? _id,
        beatVisitID: beatVisitID ?? _beatVisitID,
        docType: docType ?? _docType,
        docName: docName ?? _docName,
        docFormat: docFormat ?? _docFormat,
        isMigrated: isMigrated ?? _isMigrated,
        imagePath: imagePath ?? _imagePath,
      );

  int? get id => _id;

  int? get beatVisitID => _beatVisitID;

  String? get docType => _docType;

  String? get docName => _docName;

  String? get docFormat => _docFormat;

  dynamic get isMigrated => _isMigrated;

  dynamic get imagePath => _imagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['BeatVisitID'] = _beatVisitID;
    map['DocType'] = _docType;
    map['DocName'] = _docName;
    map['DocFormat'] = _docFormat;
    map['IsMigrated'] = _isMigrated;
    map['ImagePath'] = _imagePath;
    return map;
  }
}
