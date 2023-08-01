/*File : DoubleExtensions
Version : 1.2.0
*/

import 'package:flutter/widgets.dart';
import 'package:flutter_utils_project/src/widgets/decoration/decoration.dart';

extension DoubleExtensions on double? {
  /// Validate given Double is not null and returns given value if null.
  double validate({double value = 0.0}) {
    return this ?? value;
  }

  /// Leaves given height of space
  Widget get height => SizedBox(height: this?.toDouble());

  /// Leaves given width of space
  Widget get width1 => SizedBox(width: this?.toDouble());

  /// HTTP status code
  bool isSuccessful() => this! >= 200 && this! <= 206;

  BorderRadius borderRadius([double? val]) => radius(val);

  /// Returns microseconds duration
  /// 5.microseconds
  Duration get microseconds => Duration(microseconds: validate().toInt());

  /// Returns milliseconds duration
  /// ```dart
  /// 5.milliseconds
  /// ```
  Duration get milliseconds => Duration(milliseconds: validate().toInt());

  /// Returns seconds duration
  /// ```dart
  /// 5.seconds
  /// ```
  Duration get seconds => Duration(seconds: validate().toInt());

  /// Returns minutes duration
  /// ```dart
  /// 5.minutes
  /// ```
  Duration get minutes => Duration(minutes: validate().toInt());

  /// Returns hours duration
  /// ```dart
  /// 5.hours
  /// ```
  Duration get hours => Duration(hours: validate().toInt());

  /// Returns days duration
  /// ```dart
  /// 5.days
  /// ```
  Duration get days => Duration(days: validate().toInt());

  /// Returns Size
  Size get size => Size(this!.toDouble(), this!.toDouble());
}
