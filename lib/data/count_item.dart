/// title : ""
/// total : ""
/// image : ""
/// desc : ""
/// {
// "title":"",
// "total":"",
// "image":"",
// "desc":""
//
// }

class CountItem {
  CountItem({
    String? title,
    String? total,
    String? image,
    String? desc,
  }) {
    _title = title;
    _total = total;
    _image = image;
    _desc = desc;
  }

  CountItem.fromJson(dynamic json) {
    _title = json['title'];
    _total = json['total'];
    _image = json['image'];
    _desc = json['desc'];
  }

  String? _title;
  String? _total;
  String? _image;
  String? _desc;

  CountItem copyWith({
    String? title,
    String? total,
    String? image,
    String? desc,
  }) =>
      CountItem(
        title: title ?? _title,
        total: total ?? _total,
        image: image ?? _image,
        desc: desc ?? _desc,
      );

  String? get title => _title;

  String? get total => _total;

  String? get image => _image;

  String? get desc => _desc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['total'] = _total;
    map['image'] = _image;
    map['desc'] = _desc;
    return map;
  }
}
