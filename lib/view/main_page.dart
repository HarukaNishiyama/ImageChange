import 'package:flutter/material.dart';
import 'package:flutter_fs/view_model/main_view_model.dart';

import 'package:provider/provider.dart';

/// MainPageのViewクラス.
class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MainViewModel>(builder: (context, viewModel, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Feasibility Study'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have clicked the button this many times:',
              ),
              Text(
                viewModel.getCounter().toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: viewModel.incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
    });
  }
}
