import 'dart:convert';

Audio audioFromJson(String str) => Audio.fromJson(json.decode(str));

String audioToJson(Audio data) => json.encode(data.toJson());

class Audio {
  Audio({
    String? name,
    String? content,
    String? format,
  }) {
    _name = name;
    _content = content;
    _format = format;
  }

  Audio.fromJson(dynamic json) {
    _name = json['Name'];
    _content = json['Content'];
    _format = json['Format'];
  }

  String? _name;
  String? _content;
  String? _format;

  Audio copyWith({
    String? name,
    String? content,
    String? format,
  }) =>
      Audio(
        name: name ?? _name,
        content: content ?? _content,
        format: format ?? _format,
      );

  String? get name => _name;

  String? get content => _content;

  String? get format => _format;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = _name;
    map['Content'] = _content;
    map['Format'] = _format;
    return map;
  }
}