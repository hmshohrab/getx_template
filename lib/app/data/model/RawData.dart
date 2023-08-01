import 'dart:convert';

import 'package:getx_template/app/core/core.dart';

import 'attachment_type.dart';

/// migrationData : {"DataMigrationID":3213,"RefNo":"3213","DataMigrationStatus":4,"ProfileTypeID":1,"ProfileTypeName":"Personal","IndividualTypeID":1,"IndividualTypeName":"General","Name":"rijon mia","MobileNo":"02654785412","NID":"45689567568568","TIN":"456895675685","Email":"rijonhar@gmail.com","ArmsTypeID":2,"ArmsTypeName":"Revolver","OrganizationID":123,"LicenseNumber":"345345345","IssueDate":"2023-07-06T22:05:51","LicenseExperyDate":"2023-07-15T22:05:51","RenewDate":"2023-07-29T22:05:51","IssuingAddress":2,"AttachmentCount":null,"PermanentDistrictID":48,"PermanentDistrictName":"Dhaka","PermanentThanaID":502,"PermanentThanaName":"Gendaria","PermanentLocalAddress":"3/4, Samad tower, South Mugda Para","PermanentPostCode":"1214","PermanentLatitude":null,"PermanentLongitude":null,"PresentDistrictID":48,"PresentDistrictName":"Dhaka","PresentThanaID":503,"PresentThanaName":"Gulshan","PresentLocalAddress":"34534534545","PresentPostCode":"1214","PresentLatitude":4444444.0,"PresentLongitude":555555.0,"BloodGroup":"0","AmmunitionQtyYearly":0,"AmmunitionQtyOnetime":0,"LicenseID":null,"IsProcessed":true,"IsExcelUpload":false,"ProcessedBy":1960,"ProcessedByName":"DHAKA MIGRATION ENTRY","ProcessedDate":"2023-07-18T11:42:28.567","DataEntryDistrictID":48,"DataEntryDistrictName":null,"DataEntryThanaID":0,"DataEntryThanaName":null,"CreatedBy":1960,"CreatedByName":"DHAKA MIGRATION ENTRY","CreatedDate":"2023-07-06T16:06:46.783","OrganizationName":"Asiatic Textile Mills (Pvt.) Ltd.","DataMigrationStatusStr":"Verified","IssuingAddressName":"Permanent"}
/// attachments : [{"AttachmentID":744,"ReferenceType":1,"ReferenceID":0,"AttachementTypeID":2,"FileFormat":".jpg","AttachmentName":"Photo","AttachmentLink":null,"FileContent":"http://10.1.0.12:8083/df4ec1eb-3bc2-49b6-aa67-7dd06bc44a96_0_2.jpg","Notes":null,"Status":1,"DataMigrationRawDataID":3213,"CreatedBy":null,"CreatedDate":"2023-07-11T12:35:47.953","UpdatedBy":null,"UpdatedDate":"2023-07-11T12:35:47.953"},{"AttachmentID":745,"ReferenceType":1,"ReferenceID":0,"AttachementTypeID":20,"FileFormat":".jpg","AttachmentName":"NID","AttachmentLink":null,"FileContent":"http://10.1.0.12:8083/d989ebf2-f990-4811-b0aa-321df4fde156_0_20.jpg","Notes":null,"Status":1,"DataMigrationRawDataID":3213,"CreatedBy":null,"CreatedDate":"2023-07-11T12:38:06.407","UpdatedBy":null,"UpdatedDate":"2023-07-11T12:38:06.407"},{"AttachmentID":750,"ReferenceType":1,"ReferenceID":0,"AttachementTypeID":9,"FileFormat":".jpg","AttachmentName":"Signature/Thumb Print","AttachmentLink":null,"FileContent":"http://10.1.0.12:8083/55c60379-a3df-4730-8eb8-b63192f390f2_0_9.jpg","Notes":null,"Status":1,"DataMigrationRawDataID":3213,"CreatedBy":null,"CreatedDate":"2023-07-11T16:15:46.277","UpdatedBy":null,"UpdatedDate":"2023-07-11T16:15:46.277"},{"AttachmentID":751,"ReferenceType":1,"ReferenceID":0,"AttachementTypeID":5,"FileFormat":".jpg","AttachmentName":"TIN","AttachmentLink":null,"FileContent":"http://10.1.0.12:8083/b8230993-cb4a-4091-ba80-029c7c79b10e_0_5.jpg","Notes":null,"Status":1,"DataMigrationRawDataID":3213,"CreatedBy":null,"CreatedDate":"2023-07-11T16:21:01.367","UpdatedBy":null,"UpdatedDate":"2023-07-11T16:21:01.367"}]

RawData rawDataFromJson(String str) => RawData.fromJson(json.decode(str));

String rawDataToJson(RawData data) => json.encode(data.toJson());

class RawData extends Serializable {
  RawData({
    MigrationData? migrationData,
    List<Attachments>? attachments,
  }) {
    _migrationData = migrationData;
    _attachments = attachments;
  }

  RawData.fromJson(dynamic json) {
    _migrationData = json['migrationData'] != null
        ? MigrationData.fromJson(json['migrationData'])
        : null;
    if (json['attachments'] != null) {
      _attachments = [];
      json['attachments'].forEach((v) {
        _attachments?.add(Attachments.fromJson(v));
      });
    }
  }

  MigrationData? _migrationData;
  List<Attachments>? _attachments;

  RawData copyWith({
    MigrationData? migrationData,
    List<Attachments>? attachments,
  }) =>
      RawData(
        migrationData: migrationData ?? _migrationData,
        attachments: attachments ?? _attachments,
      );

  MigrationData? get migrationData => _migrationData;

  List<Attachments>? get attachments => _attachments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_migrationData != null) {
      map['migrationData'] = _migrationData?.toJson();
    }
    if (_attachments != null) {
      map['attachments'] = _attachments?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// AttachmentID : 744
/// ReferenceType : 1
/// ReferenceID : 0
/// AttachementTypeID : 2
/// FileFormat : ".jpg"
/// AttachmentName : "Photo"
/// AttachmentLink : null
/// FileContent : "http://10.1.0.12:8083/df4ec1eb-3bc2-49b6-aa67-7dd06bc44a96_0_2.jpg"
/// Notes : null
/// Status : 1
/// DataMigrationRawDataID : 3213
/// CreatedBy : null
/// CreatedDate : "2023-07-11T12:35:47.953"
/// UpdatedBy : null
/// UpdatedDate : "2023-07-11T12:35:47.953"

Attachments attachmentsFromJson(String str) =>
    Attachments.fromJson(json.decode(str));

String attachmentsToJson(Attachments data) => json.encode(data.toJson());

class Attachments extends Serializable{
  Attachments({
    int? attachmentID,
    int? referenceType,
    int? referenceID,
    int? attachementTypeID,
    String? fileFormat,
    String? attachmentName,
    dynamic attachmentLink,
    String? fileContent,
    dynamic notes,
    int? status,
    int? dataMigrationRawDataID,
    dynamic createdBy,
    String? createdDate,
    dynamic updatedBy,
    String? updatedDate,
  }) {
    _attachmentID = attachmentID;
    _referenceType = referenceType;
    _referenceID = referenceID;
    _attachementTypeID = attachementTypeID;
    _fileFormat = fileFormat;
    _attachmentName = attachmentName;
    _attachmentLink = attachmentLink;
    _fileContent = fileContent;
    _notes = notes;
    _status = status;
    _dataMigrationRawDataID = dataMigrationRawDataID;
    _createdBy = createdBy;
    _createdDate = createdDate;
    _updatedBy = updatedBy;
    _updatedDate = updatedDate;
  }

  Attachments.fromJson(dynamic json) {
    _attachmentID = json['AttachmentID'];
    _referenceType = json['ReferenceType'];
    _referenceID = json['ReferenceID'];
    _attachementTypeID = json['AttachementTypeID'];
    _fileFormat = json['FileFormat'];
    _attachmentName = json['AttachmentName'];
    _attachmentLink = json['AttachmentLink'];
    _fileContent = json['FileContent'];
    _notes = json['Notes'];
    _status = json['Status'];
    _dataMigrationRawDataID = json['DataMigrationRawDataID'];
    _createdBy = json['CreatedBy'];
    _createdDate = json['CreatedDate'];
    _updatedBy = json['UpdatedBy'];
    _updatedDate = json['UpdatedDate'];
  }

  int? _attachmentID;
  int? _referenceType;
  int? _referenceID;
  int? _attachementTypeID;
  String? _fileFormat;
  String? _attachmentName;
  dynamic _attachmentLink;
  String? _fileContent;
  dynamic _notes;
  int? _status;
  int? _dataMigrationRawDataID;
  dynamic _createdBy;
  String? _createdDate;
  dynamic _updatedBy;
  String? _updatedDate;

  Attachments copyWith({
    int? attachmentID,
    int? referenceType,
    int? referenceID,
    int? attachementTypeID,
    String? fileFormat,
    String? attachmentName,
    dynamic attachmentLink,
    String? fileContent,
    dynamic notes,
    int? status,
    int? dataMigrationRawDataID,
    dynamic createdBy,
    String? createdDate,
    dynamic updatedBy,
    String? updatedDate,
  }) =>
      Attachments(
        attachmentID: attachmentID ?? _attachmentID,
        referenceType: referenceType ?? _referenceType,
        referenceID: referenceID ?? _referenceID,
        attachementTypeID: attachementTypeID ?? _attachementTypeID,
        fileFormat: fileFormat ?? _fileFormat,
        attachmentName: attachmentName ?? _attachmentName,
        attachmentLink: attachmentLink ?? _attachmentLink,
        fileContent: fileContent ?? _fileContent,
        notes: notes ?? _notes,
        status: status ?? _status,
        dataMigrationRawDataID:
            dataMigrationRawDataID ?? _dataMigrationRawDataID,
        createdBy: createdBy ?? _createdBy,
        createdDate: createdDate ?? _createdDate,
        updatedBy: updatedBy ?? _updatedBy,
        updatedDate: updatedDate ?? _updatedDate,
      );

  int? get attachmentID => _attachmentID;

  int? get referenceType => _referenceType;

  int? get referenceID => _referenceID;

  int? get attachementTypeID => _attachementTypeID;

  String? get fileFormat => _fileFormat;

  String? get attachmentName => _attachmentName;

  dynamic get attachmentLink => _attachmentLink;

  String? get fileContent => _fileContent;

  dynamic get notes => _notes;

  int? get status => _status;

  int? get dataMigrationRawDataID => _dataMigrationRawDataID;

  dynamic get createdBy => _createdBy;

  String? get createdDate => _createdDate;

  dynamic get updatedBy => _updatedBy;

  String? get updatedDate => _updatedDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['AttachmentID'] = _attachmentID;
    map['ReferenceType'] = _referenceType;
    map['ReferenceID'] = _referenceID;
    map['AttachementTypeID'] = _attachementTypeID;
    map['FileFormat'] = _fileFormat;
    map['AttachmentName'] = _attachmentName;
    map['AttachmentLink'] = _attachmentLink;
    map['FileContent'] = _fileContent;
    map['Notes'] = _notes;
    map['Status'] = _status;
    map['DataMigrationRawDataID'] = _dataMigrationRawDataID;
    map['CreatedBy'] = _createdBy;
    map['CreatedDate'] = _createdDate;
    map['UpdatedBy'] = _updatedBy;
    map['UpdatedDate'] = _updatedDate;
    return map;
  }
}

/// DataMigrationID : 3213
/// RefNo : "3213"
/// DataMigrationStatus : 4
/// ProfileTypeID : 1
/// ProfileTypeName : "Personal"
/// IndividualTypeID : 1
/// IndividualTypeName : "General"
/// Name : "rijon mia"
/// MobileNo : "02654785412"
/// NID : "45689567568568"
/// TIN : "456895675685"
/// Email : "rijonhar@gmail.com"
/// ArmsTypeID : 2
/// ArmsTypeName : "Revolver"
/// OrganizationID : 123
/// LicenseNumber : "345345345"
/// IssueDate : "2023-07-06T22:05:51"
/// LicenseExperyDate : "2023-07-15T22:05:51"
/// RenewDate : "2023-07-29T22:05:51"
/// IssuingAddress : 2
/// AttachmentCount : null
/// PermanentDistrictID : 48
/// PermanentDistrictName : "Dhaka"
/// PermanentThanaID : 502
/// PermanentThanaName : "Gendaria"
/// PermanentLocalAddress : "3/4, Samad tower, South Mugda Para"
/// PermanentPostCode : "1214"
/// PermanentLatitude : null
/// PermanentLongitude : null
/// PresentDistrictID : 48
/// PresentDistrictName : "Dhaka"
/// PresentThanaID : 503
/// PresentThanaName : "Gulshan"
/// PresentLocalAddress : "34534534545"
/// PresentPostCode : "1214"
/// PresentLatitude : 4444444.0
/// PresentLongitude : 555555.0
/// BloodGroup : "0"
/// AmmunitionQtyYearly : 0
/// AmmunitionQtyOnetime : 0
/// LicenseID : null
/// IsProcessed : true
/// IsExcelUpload : false
/// ProcessedBy : 1960
/// ProcessedByName : "DHAKA MIGRATION ENTRY"
/// ProcessedDate : "2023-07-18T11:42:28.567"
/// DataEntryDistrictID : 48
/// DataEntryDistrictName : null
/// DataEntryThanaID : 0
/// DataEntryThanaName : null
/// CreatedBy : 1960
/// CreatedByName : "DHAKA MIGRATION ENTRY"
/// CreatedDate : "2023-07-06T16:06:46.783"
/// OrganizationName : "Asiatic Textile Mills (Pvt.) Ltd."
/// DataMigrationStatusStr : "Verified"
/// IssuingAddressName : "Permanent"

MigrationData migrationDataFromJson(String str) =>
    MigrationData.fromJson(json.decode(str));

String migrationDataToJson(MigrationData data) => json.encode(data.toJson());

class MigrationData {
  MigrationData({
    int? dataMigrationID,
    String? refNo,
    int? dataMigrationStatus,
    int? profileTypeID,
    String? profileTypeName,
    int? individualTypeID,
    String? individualTypeName,
    String? name,
    String? mobileNo,
    String? nid,
    String? tin,
    String? email,
    int? armsTypeID,
    String? armsTypeName,
    int? organizationID,
    String? licenseNumber,
    String? issueDate,
    String? licenseExperyDate,
    String? renewDate,
    int? issuingAddress,
    dynamic attachmentCount,
    int? permanentDistrictID,
    String? permanentDistrictName,
    int? permanentThanaID,
    String? permanentThanaName,
    String? permanentLocalAddress,
    String? permanentPostCode,
    dynamic permanentLatitude,
    dynamic permanentLongitude,
    int? presentDistrictID,
    String? presentDistrictName,
    int? presentThanaID,
    String? presentThanaName,
    String? presentLocalAddress,
    String? presentPostCode,
    double? presentLatitude,
    double? presentLongitude,
    String? bloodGroup,
    int? ammunitionQtyYearly,
    int? ammunitionQtyOnetime,
    dynamic licenseID,
    bool? isProcessed,
    bool? isExcelUpload,
    int? processedBy,
    String? processedByName,
    String? processedDate,
    int? dataEntryDistrictID,
    dynamic dataEntryDistrictName,
    int? dataEntryThanaID,
    dynamic dataEntryThanaName,
    int? createdBy,
    String? createdByName,
    String? createdDate,
    String? organizationName,
    String? dataMigrationStatusStr,
    String? issuingAddressName,
  }) {
    _dataMigrationID = dataMigrationID;
    _refNo = refNo;
    _dataMigrationStatus = dataMigrationStatus;
    _profileTypeID = profileTypeID;
    _profileTypeName = profileTypeName;
    _individualTypeID = individualTypeID;
    _individualTypeName = individualTypeName;
    _name = name;
    _mobileNo = mobileNo;
    _nid = nid;
    _tin = tin;
    _email = email;
    _armsTypeID = armsTypeID;
    _armsTypeName = armsTypeName;
    _organizationID = organizationID;
    _licenseNumber = licenseNumber;
    _issueDate = issueDate;
    _licenseExperyDate = licenseExperyDate;
    _renewDate = renewDate;
    _issuingAddress = issuingAddress;
    _attachmentCount = attachmentCount;
    _permanentDistrictID = permanentDistrictID;
    _permanentDistrictName = permanentDistrictName;
    _permanentThanaID = permanentThanaID;
    _permanentThanaName = permanentThanaName;
    _permanentLocalAddress = permanentLocalAddress;
    _permanentPostCode = permanentPostCode;
    _permanentLatitude = permanentLatitude;
    _permanentLongitude = permanentLongitude;
    _presentDistrictID = presentDistrictID;
    _presentDistrictName = presentDistrictName;
    _presentThanaID = presentThanaID;
    _presentThanaName = presentThanaName;
    _presentLocalAddress = presentLocalAddress;
    _presentPostCode = presentPostCode;
    _presentLatitude = presentLatitude;
    _presentLongitude = presentLongitude;
    _bloodGroup = bloodGroup;
    _ammunitionQtyYearly = ammunitionQtyYearly;
    _ammunitionQtyOnetime = ammunitionQtyOnetime;
    _licenseID = licenseID;
    _isProcessed = isProcessed;
    _isExcelUpload = isExcelUpload;
    _processedBy = processedBy;
    _processedByName = processedByName;
    _processedDate = processedDate;
    _dataEntryDistrictID = dataEntryDistrictID;
    _dataEntryDistrictName = dataEntryDistrictName;
    _dataEntryThanaID = dataEntryThanaID;
    _dataEntryThanaName = dataEntryThanaName;
    _createdBy = createdBy;
    _createdByName = createdByName;
    _createdDate = createdDate;
    _organizationName = organizationName;
    _dataMigrationStatusStr = dataMigrationStatusStr;
    _issuingAddressName = issuingAddressName;
  }

  MigrationData.fromJson(dynamic json) {
    _dataMigrationID = json['DataMigrationID'];
    _refNo = json['RefNo'];
    _dataMigrationStatus = json['DataMigrationStatus'];
    _profileTypeID = json['ProfileTypeID'];
    _profileTypeName = json['ProfileTypeName'];
    _individualTypeID = json['IndividualTypeID'];
    _individualTypeName = json['IndividualTypeName'];
    _name = json['Name'];
    _mobileNo = json['MobileNo'];
    _nid = json['NID'];
    _tin = json['TIN'];
    _email = json['Email'];
    _armsTypeID = json['ArmsTypeID'];
    _armsTypeName = json['ArmsTypeName'];
    _organizationID = json['OrganizationID'];
    _licenseNumber = json['LicenseNumber'];
    _issueDate = json['IssueDate'];
    _licenseExperyDate = json['LicenseExperyDate'];
    _renewDate = json['RenewDate'];
    _issuingAddress = json['IssuingAddress'];
    _attachmentCount = json['AttachmentCount'];
    _permanentDistrictID = json['PermanentDistrictID'];
    _permanentDistrictName = json['PermanentDistrictName'];
    _permanentThanaID = json['PermanentThanaID'];
    _permanentThanaName = json['PermanentThanaName'];
    _permanentLocalAddress = json['PermanentLocalAddress'];
    _permanentPostCode = json['PermanentPostCode'];
    _permanentLatitude = json['PermanentLatitude'];
    _permanentLongitude = json['PermanentLongitude'];
    _presentDistrictID = json['PresentDistrictID'];
    _presentDistrictName = json['PresentDistrictName'];
    _presentThanaID = json['PresentThanaID'];
    _presentThanaName = json['PresentThanaName'];
    _presentLocalAddress = json['PresentLocalAddress'];
    _presentPostCode = json['PresentPostCode'];
    _presentLatitude = json['PresentLatitude'];
    _presentLongitude = json['PresentLongitude'];
    _bloodGroup = json['BloodGroup'];
    _ammunitionQtyYearly = json['AmmunitionQtyYearly'];
    _ammunitionQtyOnetime = json['AmmunitionQtyOnetime'];
    _licenseID = json['LicenseID'];
    _isProcessed = json['IsProcessed'];
    _isExcelUpload = json['IsExcelUpload'];
    _processedBy = json['ProcessedBy'];
    _processedByName = json['ProcessedByName'];
    _processedDate = json['ProcessedDate'];
    _dataEntryDistrictID = json['DataEntryDistrictID'];
    _dataEntryDistrictName = json['DataEntryDistrictName'];
    _dataEntryThanaID = json['DataEntryThanaID'];
    _dataEntryThanaName = json['DataEntryThanaName'];
    _createdBy = json['CreatedBy'];
    _createdByName = json['CreatedByName'];
    _createdDate = json['CreatedDate'];
    _organizationName = json['OrganizationName'];
    _dataMigrationStatusStr = json['DataMigrationStatusStr'];
    _issuingAddressName = json['IssuingAddressName'];
  }

  int? _dataMigrationID;
  String? _refNo;
  int? _dataMigrationStatus;
  int? _profileTypeID;
  String? _profileTypeName;
  int? _individualTypeID;
  String? _individualTypeName;
  String? _name;
  String? _mobileNo;
  String? _nid;
  String? _tin;
  String? _email;
  int? _armsTypeID;
  String? _armsTypeName;
  int? _organizationID;
  String? _licenseNumber;
  String? _issueDate;
  String? _licenseExperyDate;
  String? _renewDate;
  int? _issuingAddress;
  dynamic _attachmentCount;
  int? _permanentDistrictID;
  String? _permanentDistrictName;
  int? _permanentThanaID;
  String? _permanentThanaName;
  String? _permanentLocalAddress;
  String? _permanentPostCode;
  dynamic _permanentLatitude;
  dynamic _permanentLongitude;
  int? _presentDistrictID;
  String? _presentDistrictName;
  int? _presentThanaID;
  String? _presentThanaName;
  String? _presentLocalAddress;
  String? _presentPostCode;
  double? _presentLatitude;
  double? _presentLongitude;
  String? _bloodGroup;
  int? _ammunitionQtyYearly;
  int? _ammunitionQtyOnetime;
  dynamic _licenseID;
  bool? _isProcessed;
  bool? _isExcelUpload;
  int? _processedBy;
  String? _processedByName;
  String? _processedDate;
  int? _dataEntryDistrictID;
  dynamic _dataEntryDistrictName;
  int? _dataEntryThanaID;
  dynamic _dataEntryThanaName;
  int? _createdBy;
  String? _createdByName;
  String? _createdDate;
  String? _organizationName;
  String? _dataMigrationStatusStr;
  String? _issuingAddressName;

  MigrationData copyWith({
    int? dataMigrationID,
    String? refNo,
    int? dataMigrationStatus,
    int? profileTypeID,
    String? profileTypeName,
    int? individualTypeID,
    String? individualTypeName,
    String? name,
    String? mobileNo,
    String? nid,
    String? tin,
    String? email,
    int? armsTypeID,
    String? armsTypeName,
    int? organizationID,
    String? licenseNumber,
    String? issueDate,
    String? licenseExperyDate,
    String? renewDate,
    int? issuingAddress,
    dynamic attachmentCount,
    int? permanentDistrictID,
    String? permanentDistrictName,
    int? permanentThanaID,
    String? permanentThanaName,
    String? permanentLocalAddress,
    String? permanentPostCode,
    dynamic permanentLatitude,
    dynamic permanentLongitude,
    int? presentDistrictID,
    String? presentDistrictName,
    int? presentThanaID,
    String? presentThanaName,
    String? presentLocalAddress,
    String? presentPostCode,
    double? presentLatitude,
    double? presentLongitude,
    String? bloodGroup,
    int? ammunitionQtyYearly,
    int? ammunitionQtyOnetime,
    dynamic licenseID,
    bool? isProcessed,
    bool? isExcelUpload,
    int? processedBy,
    String? processedByName,
    String? processedDate,
    int? dataEntryDistrictID,
    dynamic dataEntryDistrictName,
    int? dataEntryThanaID,
    dynamic dataEntryThanaName,
    int? createdBy,
    String? createdByName,
    String? createdDate,
    String? organizationName,
    String? dataMigrationStatusStr,
    String? issuingAddressName,
  }) =>
      MigrationData(
        dataMigrationID: dataMigrationID ?? _dataMigrationID,
        refNo: refNo ?? _refNo,
        dataMigrationStatus: dataMigrationStatus ?? _dataMigrationStatus,
        profileTypeID: profileTypeID ?? _profileTypeID,
        profileTypeName: profileTypeName ?? _profileTypeName,
        individualTypeID: individualTypeID ?? _individualTypeID,
        individualTypeName: individualTypeName ?? _individualTypeName,
        name: name ?? _name,
        mobileNo: mobileNo ?? _mobileNo,
        nid: nid ?? _nid,
        tin: tin ?? _tin,
        email: email ?? _email,
        armsTypeID: armsTypeID ?? _armsTypeID,
        armsTypeName: armsTypeName ?? _armsTypeName,
        organizationID: organizationID ?? _organizationID,
        licenseNumber: licenseNumber ?? _licenseNumber,
        issueDate: issueDate ?? _issueDate,
        licenseExperyDate: licenseExperyDate ?? _licenseExperyDate,
        renewDate: renewDate ?? _renewDate,
        issuingAddress: issuingAddress ?? _issuingAddress,
        attachmentCount: attachmentCount ?? _attachmentCount,
        permanentDistrictID: permanentDistrictID ?? _permanentDistrictID,
        permanentDistrictName: permanentDistrictName ?? _permanentDistrictName,
        permanentThanaID: permanentThanaID ?? _permanentThanaID,
        permanentThanaName: permanentThanaName ?? _permanentThanaName,
        permanentLocalAddress: permanentLocalAddress ?? _permanentLocalAddress,
        permanentPostCode: permanentPostCode ?? _permanentPostCode,
        permanentLatitude: permanentLatitude ?? _permanentLatitude,
        permanentLongitude: permanentLongitude ?? _permanentLongitude,
        presentDistrictID: presentDistrictID ?? _presentDistrictID,
        presentDistrictName: presentDistrictName ?? _presentDistrictName,
        presentThanaID: presentThanaID ?? _presentThanaID,
        presentThanaName: presentThanaName ?? _presentThanaName,
        presentLocalAddress: presentLocalAddress ?? _presentLocalAddress,
        presentPostCode: presentPostCode ?? _presentPostCode,
        presentLatitude: presentLatitude ?? _presentLatitude,
        presentLongitude: presentLongitude ?? _presentLongitude,
        bloodGroup: bloodGroup ?? _bloodGroup,
        ammunitionQtyYearly: ammunitionQtyYearly ?? _ammunitionQtyYearly,
        ammunitionQtyOnetime: ammunitionQtyOnetime ?? _ammunitionQtyOnetime,
        licenseID: licenseID ?? _licenseID,
        isProcessed: isProcessed ?? _isProcessed,
        isExcelUpload: isExcelUpload ?? _isExcelUpload,
        processedBy: processedBy ?? _processedBy,
        processedByName: processedByName ?? _processedByName,
        processedDate: processedDate ?? _processedDate,
        dataEntryDistrictID: dataEntryDistrictID ?? _dataEntryDistrictID,
        dataEntryDistrictName: dataEntryDistrictName ?? _dataEntryDistrictName,
        dataEntryThanaID: dataEntryThanaID ?? _dataEntryThanaID,
        dataEntryThanaName: dataEntryThanaName ?? _dataEntryThanaName,
        createdBy: createdBy ?? _createdBy,
        createdByName: createdByName ?? _createdByName,
        createdDate: createdDate ?? _createdDate,
        organizationName: organizationName ?? _organizationName,
        dataMigrationStatusStr:
            dataMigrationStatusStr ?? _dataMigrationStatusStr,
        issuingAddressName: issuingAddressName ?? _issuingAddressName,
      );

  int? get dataMigrationID => _dataMigrationID;

  String? get refNo => _refNo;

  int? get dataMigrationStatus => _dataMigrationStatus;

  int? get profileTypeID => _profileTypeID;

  String? get profileTypeName => _profileTypeName;

  int? get individualTypeID => _individualTypeID;

  String? get individualTypeName => _individualTypeName;

  String? get name => _name;

  String? get mobileNo => _mobileNo;

  String? get nid => _nid;

  String? get tin => _tin;

  String? get email => _email;

  int? get armsTypeID => _armsTypeID;

  String? get armsTypeName => _armsTypeName;

  int? get organizationID => _organizationID;

  String? get licenseNumber => _licenseNumber;

  String? get issueDate => _issueDate;

  String? get licenseExperyDate => _licenseExperyDate;

  String? get renewDate => _renewDate;

  int? get issuingAddress => _issuingAddress;

  dynamic get attachmentCount => _attachmentCount;

  int? get permanentDistrictID => _permanentDistrictID;

  String? get permanentDistrictName => _permanentDistrictName;

  int? get permanentThanaID => _permanentThanaID;

  String? get permanentThanaName => _permanentThanaName;

  String? get permanentLocalAddress => _permanentLocalAddress;

  String? get permanentPostCode => _permanentPostCode;

  dynamic get permanentLatitude => _permanentLatitude;

  dynamic get permanentLongitude => _permanentLongitude;

  int? get presentDistrictID => _presentDistrictID;

  String? get presentDistrictName => _presentDistrictName;

  int? get presentThanaID => _presentThanaID;

  String? get presentThanaName => _presentThanaName;

  String? get presentLocalAddress => _presentLocalAddress;

  String? get presentPostCode => _presentPostCode;

  double? get presentLatitude => _presentLatitude;

  double? get presentLongitude => _presentLongitude;

  String? get bloodGroup => _bloodGroup;

  int? get ammunitionQtyYearly => _ammunitionQtyYearly;

  int? get ammunitionQtyOnetime => _ammunitionQtyOnetime;

  dynamic get licenseID => _licenseID;

  bool? get isProcessed => _isProcessed;

  bool? get isExcelUpload => _isExcelUpload;

  int? get processedBy => _processedBy;

  String? get processedByName => _processedByName;

  String? get processedDate => _processedDate;

  int? get dataEntryDistrictID => _dataEntryDistrictID;

  dynamic get dataEntryDistrictName => _dataEntryDistrictName;

  int? get dataEntryThanaID => _dataEntryThanaID;

  dynamic get dataEntryThanaName => _dataEntryThanaName;

  int? get createdBy => _createdBy;

  String? get createdByName => _createdByName;

  String? get createdDate => _createdDate;

  String? get organizationName => _organizationName;

  String? get dataMigrationStatusStr => _dataMigrationStatusStr;

  String? get issuingAddressName => _issuingAddressName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['DataMigrationID'] = _dataMigrationID;
    map['RefNo'] = _refNo;
    map['DataMigrationStatus'] = _dataMigrationStatus;
    map['ProfileTypeID'] = _profileTypeID;
    map['ProfileTypeName'] = _profileTypeName;
    map['IndividualTypeID'] = _individualTypeID;
    map['IndividualTypeName'] = _individualTypeName;
    map['Name'] = _name;
    map['MobileNo'] = _mobileNo;
    map['NID'] = _nid;
    map['TIN'] = _tin;
    map['Email'] = _email;
    map['ArmsTypeID'] = _armsTypeID;
    map['ArmsTypeName'] = _armsTypeName;
    map['OrganizationID'] = _organizationID;
    map['LicenseNumber'] = _licenseNumber;
    map['IssueDate'] = _issueDate;
    map['LicenseExperyDate'] = _licenseExperyDate;
    map['RenewDate'] = _renewDate;
    map['IssuingAddress'] = _issuingAddress;
    map['AttachmentCount'] = _attachmentCount;
    map['PermanentDistrictID'] = _permanentDistrictID;
    map['PermanentDistrictName'] = _permanentDistrictName;
    map['PermanentThanaID'] = _permanentThanaID;
    map['PermanentThanaName'] = _permanentThanaName;
    map['PermanentLocalAddress'] = _permanentLocalAddress;
    map['PermanentPostCode'] = _permanentPostCode;
    map['PermanentLatitude'] = _permanentLatitude;
    map['PermanentLongitude'] = _permanentLongitude;
    map['PresentDistrictID'] = _presentDistrictID;
    map['PresentDistrictName'] = _presentDistrictName;
    map['PresentThanaID'] = _presentThanaID;
    map['PresentThanaName'] = _presentThanaName;
    map['PresentLocalAddress'] = _presentLocalAddress;
    map['PresentPostCode'] = _presentPostCode;
    map['PresentLatitude'] = _presentLatitude;
    map['PresentLongitude'] = _presentLongitude;
    map['BloodGroup'] = _bloodGroup;
    map['AmmunitionQtyYearly'] = _ammunitionQtyYearly;
    map['AmmunitionQtyOnetime'] = _ammunitionQtyOnetime;
    map['LicenseID'] = _licenseID;
    map['IsProcessed'] = _isProcessed;
    map['IsExcelUpload'] = _isExcelUpload;
    map['ProcessedBy'] = _processedBy;
    map['ProcessedByName'] = _processedByName;
    map['ProcessedDate'] = _processedDate;
    map['DataEntryDistrictID'] = _dataEntryDistrictID;
    map['DataEntryDistrictName'] = _dataEntryDistrictName;
    map['DataEntryThanaID'] = _dataEntryThanaID;
    map['DataEntryThanaName'] = _dataEntryThanaName;
    map['CreatedBy'] = _createdBy;
    map['CreatedByName'] = _createdByName;
    map['CreatedDate'] = _createdDate;
    map['OrganizationName'] = _organizationName;
    map['DataMigrationStatusStr'] = _dataMigrationStatusStr;
    map['IssuingAddressName'] = _issuingAddressName;
    return map;
  }
}
