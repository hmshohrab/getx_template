import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'images.dart';

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Row(
      children: [
        const CircularProgressIndicator(),
        Container(
            margin: const EdgeInsets.only(left: 7),
            child: const Text("Loading...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

extension Unique<E, Id> on List<E> {
  List<E> unique([Id Function(E element)? id, bool inplace = true]) {
    final ids = Set();
    var list = inplace ? this : List<E>.from(this);
    list.retainWhere((x) => ids.add(id != null ? id(x) : x as Id));
    return list;
  }
}

void showSnackBar(BuildContext context, String text,
    {Color color = Colors.red}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(backgroundColor: color, content: Text(text)),
  );
}

AppBar getAppBar(BuildContext context, title,
    {bool enableBackButton = true,
    VoidCallback? onBackPressed,
    List<Widget>? actions}) {
  return AppBar(
    title: Text(
      title,
      style:
          const TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
    ),
    backgroundColor: Colors.white,
    automaticallyImplyLeading: enableBackButton,
    leading: (enableBackButton)
        ? IconButton(
            onPressed: onBackPressed,
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
          )
        : null,
    elevation: 2.0,
    actions: actions,
  );
}

Widget loadImage(imageUrl) {
  return FadeInImage.assetNetwork(
    key: Key(Random().nextInt(5).toString()),
    placeholder: ImagesAssets.placeholder,
    image: "$imageUrl",
    fit: BoxFit.fill,
    imageErrorBuilder: (ctx, exception, stackTrace) {
      return Image.asset(
        ImagesAssets.placeholder,
        width: double.infinity,
        height: double.maxFinite,
      );
    },
    placeholderFit: BoxFit.fill,
  );
}

Widget loadProfileImage(imageUrl) {
  if (imageUrl != null) {
    return FadeInImage.assetNetwork(
      key: Key(Random().nextInt(5).toString()),
      placeholder: ImagesAssets.common,
      image: "$imageUrl",
      fit: BoxFit.fill,
      imageErrorBuilder: (ctx, exception, stackTrace) {
        return SvgPicture.asset(SVGAssets.common);
      },
    );
  } else {
    return SvgPicture.asset(SVGAssets.common);
  }
}

bool isNumeric(String str) {
  if (str.isEmpty) {
    return false;
  }
  return int.tryParse(str) != null;
}

logD(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}

extension WidgetExtensions on Widget? {
  Widget inVisible() {
    return const SizedBox();
  }
}
