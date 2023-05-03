import 'package:bloc/bloc.dart';
import '../../../domain/usecases/take_picture_from_id_usecase.dart';
import 'picture_screen_state.dart';

class PictureScreenCubit extends Cubit<PictureScreenState> {
  PictureScreenCubit({
    required this.takePictureFromIdUsecase,
  }) : super(const PictureScreenState());

  final TakePictureFromIdUsecase takePictureFromIdUsecase;

  Future<void> takePicture(String id) async {
    emit(state.copyWith(isLoading: true));
    final picture = await takePictureFromIdUsecase.call(
      TakePictureFromIdUsecaseParams(id: id),
    );
    emit(
      state.copyWith(picture: picture, isLoading: false),
    );
  }
}
