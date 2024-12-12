import 'package:blog_app/app.dart';
import 'package:blog_app/core/config/injection.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await DependencyInjection.init();
  runApp(const BlogApp());
}