import 'package:api_picture_app/domain/entity/picture.dart';

abstract class PictureRepository {
  Future<List<Picture>> takePictures();

}
