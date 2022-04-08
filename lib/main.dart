import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'presentation/app_widget.dart';

/// The entry point of the application.
void main() async {
  // Ensure Widgets are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the Firebase app.
  await Firebase.initializeApp();

  configureInjection(Environment.prod);

  runApp(const App());
}
