import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  runZonedGuarded(
    () => runApp(
      const SltApp(),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
