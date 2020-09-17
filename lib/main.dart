import 'package:flutter/material.dart';
import 'package:flutter_fs/view/main_page.dart';
import 'package:flutter_fs/view_model/main_view_model.dart';

import 'package:provider/provider.dart';

/// 本アプリのエントリポイント.
void main() {
  runApp(MyApp());
}

/// 本アプリのエントリポイントとなるクラス.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Feasibility Study',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(),
        child: MainPage(),
      ),
    );
  }
}
