import 'dart:convert';

import 'package:getx_template/app/core/core.dart';
/// AttachmentTypeID : 2
/// AttachmentType : "Photo"
/// AttachmentTypeBangla : "ছবি"
/// IsIndividual : true
/// IsFinancial : true
/// IsOrganization : false
/// IsIndividualProfileOrApplication : 1
/// SortOrder : 1
/// IsIndividualMandatory : false
/// IsFinancialMandatory : null
/// IsOrganizationMandatory : null
/// Properties : null
/// IsUploaded : true
/// ImageFile : "2023-07-11T16:21:01.367"

AttachmentType attachmentTypeFromJson(String str) => AttachmentType.fromJson(json.decode(str));
String attachmentTypeToJson(AttachmentType data) => json.encode(data.toJson());
class AttachmentType extends Serializable {
  AttachmentType({
      int? attachmentTypeID, 
      String? attachmentType, 
      String? attachmentTypeBangla, 
      bool? isIndividual, 
      bool? isFinancial, 
      bool? isOrganization, 
      int? isIndividualProfileOrApplication, 
      int? sortOrder, 
      bool? isIndividualMandatory, 
      dynamic isFinancialMandatory, 
      dynamic isOrganizationMandatory, 
      dynamic properties, 
      bool? isUploaded, 
      String? imageFile,}){
    _attachmentTypeID = attachmentTypeID;
    _attachmentType = attachmentType;
    _attachmentTypeBangla = attachmentTypeBangla;
    _isIndividual = isIndividual;
    _isFinancial = isFinancial;
    _isOrganization = isOrganization;
    _isIndividualProfileOrApplication = isIndividualProfileOrApplication;
    _sortOrder = sortOrder;
    _isIndividualMandatory = isIndividualMandatory;
    _isFinancialMandatory = isFinancialMandatory;
    _isOrganizationMandatory = isOrganizationMandatory;
    _properties = properties;
    _isUploaded = isUploaded;
    _imageFile = imageFile;
}

  set imageFile(String? value) {
    _imageFile = value;
  }

  AttachmentType.fromJson(dynamic json) {
    _attachmentTypeID = json['AttachmentTypeID'];
    _attachmentType = json['AttachmentType'];
    _attachmentTypeBangla = json['AttachmentTypeBangla'];
    _isIndividual = json['IsIndividual'];
    _isFinancial = json['IsFinancial'];
    _isOrganization = json['IsOrganization'];
    _isIndividualProfileOrApplication = json['IsIndividualProfileOrApplication'];
    _sortOrder = json['SortOrder'];
    _isIndividualMandatory = json['IsIndividualMandatory'];
    _isFinancialMandatory = json['IsFinancialMandatory'];
    _isOrganizationMandatory = json['IsOrganizationMandatory'];
    _properties = json['Properties'];
    _isUploaded = json['IsUploaded'];
    _imageFile = json['ImageFile'];
  }
  int? _attachmentTypeID;
  String? _attachmentType;
  String? _attachmentTypeBangla;
  bool? _isIndividual;
  bool? _isFinancial;
  bool? _isOrganization;
  int? _isIndividualProfileOrApplication;
  int? _sortOrder;
  bool? _isIndividualMandatory;
  dynamic _isFinancialMandatory;
  dynamic _isOrganizationMandatory;
  dynamic _properties;
  bool? _isUploaded;
  String? _imageFile;
AttachmentType copyWith({  int? attachmentTypeID,
  String? attachmentType,
  String? attachmentTypeBangla,
  bool? isIndividual,
  bool? isFinancial,
  bool? isOrganization,
  int? isIndividualProfileOrApplication,
  int? sortOrder,
  bool? isIndividualMandatory,
  dynamic isFinancialMandatory,
  dynamic isOrganizationMandatory,
  dynamic properties,
  bool? isUploaded,
  String? imageFile,
}) => AttachmentType(  attachmentTypeID: attachmentTypeID ?? _attachmentTypeID,
  attachmentType: attachmentType ?? _attachmentType,
  attachmentTypeBangla: attachmentTypeBangla ?? _attachmentTypeBangla,
  isIndividual: isIndividual ?? _isIndividual,
  isFinancial: isFinancial ?? _isFinancial,
  isOrganization: isOrganization ?? _isOrganization,
  isIndividualProfileOrApplication: isIndividualProfileOrApplication ?? _isIndividualProfileOrApplication,
  sortOrder: sortOrder ?? _sortOrder,
  isIndividualMandatory: isIndividualMandatory ?? _isIndividualMandatory,
  isFinancialMandatory: isFinancialMandatory ?? _isFinancialMandatory,
  isOrganizationMandatory: isOrganizationMandatory ?? _isOrganizationMandatory,
  properties: properties ?? _properties,
  isUploaded: isUploaded ?? _isUploaded,
  imageFile: imageFile ?? _imageFile,
);
  int? get attachmentTypeID => _attachmentTypeID;
  String? get attachmentType => _attachmentType;
  String? get attachmentTypeBangla => _attachmentTypeBangla;
  bool? get isIndividual => _isIndividual;
  bool? get isFinancial => _isFinancial;
  bool? get isOrganization => _isOrganization;
  int? get isIndividualProfileOrApplication => _isIndividualProfileOrApplication;
  int? get sortOrder => _sortOrder;
  bool? get isIndividualMandatory => _isIndividualMandatory;
  dynamic get isFinancialMandatory => _isFinancialMandatory;
  dynamic get isOrganizationMandatory => _isOrganizationMandatory;
  dynamic get properties => _properties;
  bool? get isUploaded => _isUploaded;
  String? get imageFile => _imageFile;

  set isUploaded(bool? value) {
    _isUploaded = value;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['AttachmentTypeID'] = _attachmentTypeID;
    map['AttachmentType'] = _attachmentType;
    map['AttachmentTypeBangla'] = _attachmentTypeBangla;
    map['IsIndividual'] = _isIndividual;
    map['IsFinancial'] = _isFinancial;
    map['IsOrganization'] = _isOrganization;
    map['IsIndividualProfileOrApplication'] = _isIndividualProfileOrApplication;
    map['SortOrder'] = _sortOrder;
    map['IsIndividualMandatory'] = _isIndividualMandatory;
    map['IsFinancialMandatory'] = _isFinancialMandatory;
    map['IsOrganizationMandatory'] = _isOrganizationMandatory;
    map['Properties'] = _properties;
    map['IsUploaded'] = _isUploaded;
    map['ImageFile'] = _imageFile;
    return map;
  }

}