import 'package:flutter/material.dart';
import 'package:flutter_app/app/controller/app.dart';
import 'package:flutter_app/app/pages/home.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: Colors.purple,
              brightness: AppController.instance.isDarkTheme
                  //alterador ternanio
                  ? Brightness.light
                  : Brightness.dark,
            ),
            initialRoute: "/",
            routes: {
              '/': (context) => HomePage(),
              '/home': (context) => HomePage(),
              '/perfil': (context) => HomePage(),
            });
      },
    );
  }
}
