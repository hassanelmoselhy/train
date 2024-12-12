import 'package:blog_app/core/config/di.dart';
import 'package:flutter/material.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initDi();
  }
}