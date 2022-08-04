import 'package:audeck/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'utils/navigation_service.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      navigatorKey: NavigationService.navigatorKey,
    ),
  );
}
