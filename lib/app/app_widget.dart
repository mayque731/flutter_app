import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/controller/app.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Appcontroller.instance,
      builder: (BuildContext context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.green,
            brightness: Appcontroller.instance.isDarkTheme
                //alterador ternanio
                ? Brightness.dark
                : Brightness.light,
          ),
        );
      },
    );
  }
}
