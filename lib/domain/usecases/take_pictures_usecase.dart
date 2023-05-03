import 'package:api_picture_app/domain/entity/picture.dart';
import 'package:api_picture_app/domain/repository/picture_repository.dart';
import 'package:api_picture_app/domain/usecases/base_usecase.dart';

class TakePicturesUsecase extends BaseUseCase<List<Picture>> {
  TakePicturesUsecase(this.picturesRepository);
  final PictureRepository picturesRepository;

  @override
  Future<List<Picture>> call() async => picturesRepository.takePictures();
}
