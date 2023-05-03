import 'package:api_picture_app/domain/usecases/take_pictures_usecase.dart';
import 'package:bloc/bloc.dart';
import 'main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit({
    required this.takePicturesUsecase,
  }) : super(const MainScreenState());

  final TakePicturesUsecase takePicturesUsecase;

  Future<void> initParams() async {
    await takePictures();
  }

  Future<void> takePictures() async {
    emit(state.copyWith(isLoading: true));
    final pictures = await takePicturesUsecase.call();
    emit(
      state.copyWith(pictures: pictures, isLoading: false),
    );
}
}