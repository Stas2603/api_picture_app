import 'package:api_picture_app/presentation/application.dart';
import 'package:flutter/material.dart';
import 'locator_service.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 
  await di.init();
  runApp(
    const ApiPictureApp(),
  );
}