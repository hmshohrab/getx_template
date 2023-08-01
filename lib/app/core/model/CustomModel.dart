import 'data_response.dart';

class CustomModel<T> extends Serializable {
  T? data;

  CustomModel({
    T? data,
  }) {
    this.data = data;
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
