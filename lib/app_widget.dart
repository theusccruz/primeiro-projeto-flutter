import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.cyan,
            brightness: AppController.instance.isTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage()
          },
        );
      },
      animation: AppController.instance,
    );
  }
}
