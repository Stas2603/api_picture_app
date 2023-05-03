import 'package:equatable/equatable.dart';
import '../repository/picture_repository.dart';
import 'base_usecase.dart';

class TakePictureFromIdUsecase
    extends BaseUseCaseParams<String, TakePictureFromIdUsecaseParams> {
  TakePictureFromIdUsecase(this.pictureRepository);
  final PictureRepository pictureRepository;

  @override
  Future<String> call(TakePictureFromIdUsecaseParams params) async =>
      pictureRepository.takePictureFromId(params.id);
}

class TakePictureFromIdUsecaseParams extends Equatable {
  const TakePictureFromIdUsecaseParams({required this.id});
  final String id;

  @override
  List<Object> get props => [id];
}
