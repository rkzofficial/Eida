import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'presentation/app_widget.dart';

/// The entry point of the application.
void main() async {
  // Ensure Widgets are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the Firebase app.
  await Firebase.initializeApp();

  runApp(const App());
}
