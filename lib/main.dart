import 'package:flutter/material.dart';
import 'locator_service.dart' as di;
import 'presentation/application.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(
    const ApiPictureApp(),
  );
}
