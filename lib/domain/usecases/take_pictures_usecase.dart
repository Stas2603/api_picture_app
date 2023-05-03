import '../entity/picture.dart';
import '../repository/picture_repository.dart';
import 'base_usecase.dart';

class TakePicturesUsecase extends BaseUseCase<List<Picture>> {
  TakePicturesUsecase(this.picturesRepository);
  final PictureRepository picturesRepository;

  @override
  Future<List<Picture>> call() async => picturesRepository.takePictures();
}
