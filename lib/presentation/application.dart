import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../locator_service.dart';
import 'navigation/route_generator.dart';
import 'screens/main_screen/main_screen_cubit.dart';
import 'screens/main_screen/main_screen_view.dart';
import 'screens/picture_screen/picture_screen_cubit.dart';

class ApiPictureApp extends StatelessWidget {
  const ApiPictureApp({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<MainScreenCubit>(
            create: (context) => sl<MainScreenCubit>(),
          ),
          BlocProvider<PictureScreenCubit>(
            create: (context) => sl<PictureScreenCubit>(),
          ),
        ],
        child: _buildWithSettings(context),
      );

  Widget _buildWithSettings(BuildContext context) => const MaterialApp(
        onGenerateRoute: generateRoute,
        home: MainScreenView(),
      );
}
