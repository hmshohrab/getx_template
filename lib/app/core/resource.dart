enum Status { NOT_STARTED, SUCCESS, ERROR, LOADING }

class Resource<T, E> {
  final Status status;
  final T? data;
  final E? error;

  Resource(this.status, this.data, this.error);

  factory Resource.success(T? data) {
    return Resource(Status.SUCCESS, data, null);
  }

  factory Resource.error(T? data, E error) {
    return Resource(Status.ERROR, data, error);
  }

  factory Resource.loading(T? data) {
    return Resource(Status.LOADING, data, null);
  }

  factory Resource.init(T? data, E? error) {
    return Resource(Status.NOT_STARTED, data, error);
  }
}

extension ResourceExtensions on Resource {
  bool dataIsNull() {
    return this.data == null ? true : false;
  }

  bool isLoading() {
    return this.status == Status.LOADING ? true : false;
  }

  bool isNotStarted() {
    return this.status == Status.NOT_STARTED ? true : false;
  }

  String getErrorMessage() {
    if (status == Status.ERROR && error is String) {
      return error.toString();
    } else {
      return "";
    }
  }
}
