import 'dart:io';

import '/app/network/exceptions/api_exception.dart';

class ForbiddenException extends ApiException {
  ForbiddenException(String message, String status)
      : super(httpCode: HttpStatus.forbidden, status: status, message: message);
}
