//   const  BASE_URL = BuildConfig.BASE_URL
//const baseUrl = "http://10.1.0.12:8045/";
//const baseUrl = "http://10.1.0.12:8084/";
const baseUrl = "http://43.240.101.75:8084/";
const baseUrlApi = "${baseUrl}api/";

class Endpoints {
  static const loginUrl = "${baseUrlApi}User/VerifryUserMobile";
  static const changePasswordUrl = "${baseUrlApi}secuirity/changepassword";
  static const getByRefNoRawDataUrl = "${baseUrlApi}dataMigration/getByRefNoRawData";
  static const getAllAttachmentTypeUrl = "${baseUrlApi}AttachmentType/getAllAttachmentType";
  static const beatVisitUtilsUrl = "${baseUrlApi}beat/visit/utils";
  static const dashboardMobileUrl = "${baseUrlApi}dataMigration/getDashboard_Mobile";
  static const saveAttachmentUrl =
      "${baseUrlApi}dataMigration/saveAttachmentWithDataMigrationRawDataID_Mobile";
  static const deleteAttachmentUrl = "${baseUrlApi}Attachment/deleteAttachment";
}
