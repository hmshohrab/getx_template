import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Widget? bnBar;
  final Widget? fab;
  final Widget? drawer;
  final PreferredSizeWidget? appBar;
  final Color? bgColor;

  const Background(
      {Key? key,
      this.bnBar,
      this.fab,
      this.drawer,
      required this.child,
      this.appBar,
      this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (appBar != null) ? appBar : null,
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      drawer: drawer,
      bottomNavigationBar: (bnBar != null) ? bnBar : null,
      floatingActionButton: fab,
      body: SafeArea(
        child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: child),
      ),
    );
  }
}
