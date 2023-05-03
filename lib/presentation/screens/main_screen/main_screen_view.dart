import 'package:api_picture_app/presentation/screens/main_screen/main_screen_cubit.dart';
import 'package:api_picture_app/presentation/screens/main_screen/main_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}

class _MainScreenViewState extends State<MainScreenView> {
  @override
  void initState() {
    context.read<MainScreenCubit>().takePictures();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BlocBuilder<MainScreenCubit, MainScreenState>(
          builder: (context, state) {
        if (state.pictures.isEmpty || state.isLoading) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else {
          return ListView.builder(
            itemCount: state.pictures.length,
            itemBuilder: (context, index) {
              return ListTile(
                trailing: Image.network(state.pictures[index].photo),
                title: Text(state.pictures[index].autor),
                subtitle: Text(state.pictures[index].title ?? ''),
              );
            },
          );
        }
      })),
    );
  }
}
