import 'data_response.dart';

class CustomModel<T> extends Serializable {
  T? data;

  CustomModel({
    this.data,
  });

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
