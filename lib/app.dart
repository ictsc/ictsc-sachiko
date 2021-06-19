import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/ui/home_page.dart';
import 'package:ictsc_sachiko/ui/login_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/login') {
          return MaterialPageRoute(builder: (context) => LoginPage());
        }

        // Default Routing
        return MaterialPageRoute(builder: (context) => HomePage());
      },
    );
  }
}
