import '../entity/picture.dart';

abstract class PictureRepository {
  Future<List<Picture>> takePictures();

  Future<String> takePictureFromId(String id);
}
