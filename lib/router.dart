import 'package:flutter/material.dart';
import 'views/notifications/notifications.dart';
import 'views/home/home.dart';
import 'Screens/SignInOne.dart';
const String homeViewRoute = '/';
const String notificationsViewRoute = '/notifications';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeViewRoute:
      return MaterialPageRoute(builder: (_) => SignInOne());
    case notificationsViewRoute:
      return MaterialPageRoute(builder: (_) => NotificationsPage());

      break;
    default:
      return MaterialPageRoute(builder: (_) => SignInOne());
  }
}
