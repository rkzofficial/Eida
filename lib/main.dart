import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'presentation/app_widget.dart';

/// The entry point of the application.
void main() {
  Either<int, String> either = right('Hello');

  runApp(const App());
}
