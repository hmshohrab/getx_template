import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_utils_project/flutter_utils_project.dart';
import 'package:get/get.dart';

import '../app/core/values/text_styles.dart';
import 'color_resources.dart';

class Utils {
  static Future<dynamic> readJson(fileName) async {
    final String response = await rootBundle.loadString(fileName);
    return await jsonDecode(response);
  }

  static void hideKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  static void deleteFile(String path) async {
    final file = File(path);
    if (await file.exists()) {
      await file.delete();
      print('File deleted successfully.');
    } else {
      print('File does not exist.');
    }
  }

  static leaveDialog(context,
      {title = "Are you sure you want to leave this page?"}) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        actions: [
          OutlinedButton(
            child: Text(
              'Cancel',
              style: appBarActionTextStyle.copyWith(color: Colors.black),
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red; // Set the color to red when pressed
                }
                return ColorResources
                    .kPrimaryColor; // Use the default color when not pressed
              },
            )),
            child: Text(
              'LEAVE',
              style: whiteText16,
            ),
            onPressed: () => Navigator.pop(context, true),
          ).widthAndHeight(width: 100, height: 35),
        ],
      ),
    );
  }

  static anotherFileUploadDialog(context,
      {title = "Are you sure you want to leave this page?"}) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        actions: [
          OutlinedButton(
            child: Text(
              'NO',
              style: appBarActionTextStyle.copyWith(color: Colors.black),
            ),
            onPressed: () => Navigator.pop(context, false),
          ),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green; // Set the color to red when pressed
                }
                return ColorResources
                    .kPrimaryColor; // Use the default color when not pressed
              },
            )),
            child: Text(
              'YES',
              style: whiteText16,
            ),
            onPressed: () => Navigator.pop(context, true),
          ).widthAndHeight(width: 100, height: 35),
        ],
      ),
    );
  }

  static showSuccessDialog(BuildContext context, String message,
      {Color color = Colors.red}) async {
    return await Get.dialog(Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle,
              size: 48.0,
              color: Colors.green,
            ),
            SizedBox(height: 16.0),
            Text(
              "Success",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(
                "OK",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  static clear(List<Object> list) {
    if (list.length >= 1) {
      list.removeRange(1, list.length);
    }
  }
}
