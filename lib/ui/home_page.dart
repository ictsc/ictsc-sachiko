import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ictsc_sachiko/ui/common/header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(appBar: AppBar()),
      body: const Text('HOME'),
    );
  }
}
