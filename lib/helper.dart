import 'package:flutter/cupertino.dart';

class Helper {
  Route createRoute(Widget whichPage) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => whichPage,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

}