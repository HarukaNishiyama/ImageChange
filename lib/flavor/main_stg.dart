import 'package:flutter/material.dart';
import 'app_entry.dart';
import 'config/config.dart';

void main() {
  Config.environment = Flavor.STAGING;
  runApp(MyApp());
}