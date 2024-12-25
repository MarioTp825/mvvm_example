import 'package:flutter/material.dart';
import 'package:mvvm_project/error/view/error_screen.dart';
import 'package:mvvm_project/example/view/example_screen.dart';

class RouteGenerator {

  /// This method is responsible for generating the routes of the application.
  /// Here you will connect the routes with the respective screens/widgets.
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const ExampleScreen());
      case '/error':
      default:
        //This is where you extract the args and pass them to your screen.
        final msg = args?.toString();
        return MaterialPageRoute(
          builder: (_) => ErrorScreen(
            message: msg ?? "An unexpected error has occurred, please contact your provider.",
          ),
        );
    }
  }
}