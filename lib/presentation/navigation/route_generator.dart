import 'package:flutter/material.dart';
import '../screens/main_screen/main_screen_view.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const MainScreenView(),
      );
    
  }

  return routeExeption();
}

Route routeExeption() => MaterialPageRoute<dynamic>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(child: Text('Error')),
      ),
    );

