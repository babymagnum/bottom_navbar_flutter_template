import 'package:dribbble_clone/core/helper/constant.dart';
import 'package:dribbble_clone/core/helper/locator.dart';
import 'package:dribbble_clone/core/helper/router.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  /* Don't forget to change BASE_API to Constant.API_PRODUCTION when building apk / when testing live server */
  static const BASE_API = Constant.API_PRODUCTION;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Router.initialRoute,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
