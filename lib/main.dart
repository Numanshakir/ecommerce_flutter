import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() {
  runApp(const ProviderScope(
      child: MyApp()));
}
