import 'dart:convert';

import 'package:flutter/material.dart';

import 'extensions.dart';

class Nav {
  static var routes = {
    // MainScreen.routeName: (ctx) => const MainScreen(),
    // SignupScreen.routeName: (ctx) => const SignupScreen(),
    // LoginScreen.routeName: (ctx) => const LoginScreen(),
    //  EditProfileScreen.routeName: (ctx) => const EditProfileScreen(),
    //  ConsultantDetailsScreen.routeName: (ctx) => const ConsultantDetailsScreen(),
    // SearchConsultantScreen.routeName: (ctx) => const SearchConsultantScreen(),
    //  BookingDetailsScreen.routeName: (ctx) => const BookingDetailsScreen(),
    //  BookingPaymentScreen.routeName: (ctx) => const BookingPaymentScreen(),
    //  WaitingScreen.routeName: (ctx) => const WaitingScreen(),
    // ReviewListScreen.routeName: (ctx) => const ReviewListScreen(),
  };

  static Route<dynamic> generateRoute(RouteSettings settings) {
    logD("Route: ${settings.name} Args: ${jsonEncode(settings.arguments)}");
    Map<String, dynamic> args = settings.arguments != null
        ? settings.arguments as Map<String, dynamic>
        : {};

    switch (settings.name) {
      /*case RouteConstants.routeMainScreen:
        return MaterialPageRoute(
            builder: (_) => const MainScreen(), settings: settings);
      case RouteConstants.routeSignupScreen:
        return MaterialPageRoute(
            builder: (_) => const SignupScreen(), settings: settings);
      case RouteConstants.routeLoginScreen:
        return MaterialPageRoute(
            builder: (_) => const LoginScreen(), settings: settings);
      case EditProfileScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const EditProfileScreen(), settings: settings);
      case ConsultantDetailsScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => ConsultantDetailsScreen(
            consultantItem: ConsultantItem.fromJson(args),
          ),
        );
      case SearchConsultantScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const SearchConsultantScreen(), settings: settings);
      case BookingDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const BookingDetailsScreen(), settings: settings);
      case BookingPaymentScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const BookingPaymentScreen(), settings: settings);
      case WaitingScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const WaitingScreen(), settings: settings);
      case RouteConstants.routeVideoCallScreen:
        String channel = args[ArgParams.channelKey];
        String token = args[ArgParams.channelTokenKey];
        CallRequestModel reqModel = args[ArgParams.resCallRequestModel];
        ResCallAcceptModel joinModel = args[ArgParams.resCallAcceptModel];
        bool isForOutGoing = args[ArgParams.isForOutGoing];
        String callerType = args[ArgParams.callerType];
        return MaterialPageRoute(
            builder: (_) =>   VideoCallScreen(channelName: channel,token: token,resCallRequestModel: reqModel,resCallAcceptModel: joinModel,isForOutGoing: isForOutGoing,), settings: settings);
      //Incoming Call Route
      case RouteConstants.routeIncomingCallScreen:
        CallRequestModel reqModel = args[ArgParams.resCallRequestModel];
        ResCallAcceptModel joinModel = args[ArgParams.resCallAcceptModel];
        bool isForOutGoing = args[ArgParams.isForOutGoing];
        return MaterialPageRoute(
            builder: (_) => IncomingCallScreen(
                  resCallRequestModel: reqModel,
                  resCallAcceptModel: joinModel,
                  isForOutGoing: isForOutGoing,
                ));*/
      default:
        return _errorRoute(" Coming soon...");
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: Center(child: Text(message)));
    });
  }

  static void pushReplacement(BuildContext context, String routeName,
      {Object? arguments}) {
    Navigator.of(context).pushReplacementNamed(routeName, arguments: arguments);
  }

  static Future<dynamic> push(BuildContext context, String routeName,
      {Object? arguments}) {
    return Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static void pop(BuildContext context, {dynamic args}) {
    Navigator.of(context).pop(args);
  }

  static void popUntil(context, {dynamic args, required String routeName}) {
    bool isNewRouteSameAsCurrent = false;

    Navigator.popUntil(context, (route) {
      if (route.settings.name == routeName) {
        isNewRouteSameAsCurrent = true;
      }
      return true;
    });

    if (!isNewRouteSameAsCurrent) {
      Navigator.pushNamed(context, routeName);
    }
  }

  static Future<dynamic> pushAndRemoveUntil(
      BuildContext context, String routeName,
      {Object? arguments}) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
        routeName, (route) => false,
        arguments: arguments);
  }
}
