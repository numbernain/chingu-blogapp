import 'package:chingu_blogapp/injection.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(MyApp());
}


