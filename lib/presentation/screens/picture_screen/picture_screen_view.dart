import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'picture_screen_cubit.dart';
import 'picture_screen_state.dart';

class PictureScreenView extends StatefulWidget {
  const PictureScreenView({super.key, required this.id});

  final String id;

  @override
  State<PictureScreenView> createState() => _PictureScreenViewState();
}

class _PictureScreenViewState extends State<PictureScreenView> {
  @override
  void initState() {
    context.read<PictureScreenCubit>().takePicture(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: BlocBuilder<PictureScreenCubit, PictureScreenState>(
              builder: (context, state) {
                if (state.picture == '' || state.isLoading) {
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else {
                  return Image.network(
                    state.picture,
                    fit: BoxFit.contain,
                  );
                }
              },
            ),
          ),
        ),
      );
}
