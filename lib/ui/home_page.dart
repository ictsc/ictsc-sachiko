import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 戻るボタンを削除
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            // ログインボタン
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');

              },
              child: Text('ログイン',
                  style: Theme.of(context).primaryTextTheme.bodyText1),
            ),
          ),
        ],
      ),
    );
  }
}
