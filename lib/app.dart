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
        // pageBuilderは画面遷移のアニメーションをオフにしている
        if (settings.name == '/login') {
          return PageRouteBuilder(pageBuilder: (_, __, ___) => LoginPage());
        }

        // Default Routing
        return PageRouteBuilder(pageBuilder: (_, __, ___) => HomePage());
      },
    );
  }
}
