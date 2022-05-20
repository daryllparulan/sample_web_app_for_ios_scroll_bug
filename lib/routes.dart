import 'package:flutter/material.dart';
import 'package:sample_web_app_for_ios_scroll_bug/main.dart';

class RoutesName {
  // ignore: non_constant_identifier_names
  static const String INITIAL_PAGE = '/';
  // ignore: non_constant_identifier_names
  static const String SENT_PAGE = '/sent';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.INITIAL_PAGE:
        return _GeneratePageRoute(
            widget: const MyHomePage(title: 'Flutter Demo Home Page'),
            routeName: settings.name!);
      case RoutesName.SENT_PAGE:
        return _GeneratePageRoute(
            widget: const SentPage(), routeName: settings.name!);
      default:
        return _GeneratePageRoute(
            widget: const MyHomePage(title: 'Flutter Demo Home Page'),
            routeName: settings.name!);
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;
  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
