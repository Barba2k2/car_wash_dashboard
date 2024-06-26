import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../../../../firebase_options.dart';
// import 'helpers/environments.dart';

class ApplicationConfig {
  Future<void> configureApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    await _firebaseCoreConfig();
  }

  Future<void> _firebaseCoreConfig() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
