import 'package:api_picture_app/data/api/picture_api.dart';
import 'package:api_picture_app/data/entity/network_picture.dart';
import 'package:api_picture_app/data/mappers/picture_mapper.dart';
import 'package:api_picture_app/domain/entity/picture.dart';
import 'package:api_picture_app/domain/repository/picture_repository.dart';

class PictureRepositoryImpl extends PictureRepository {
  PictureRepositoryImpl({required this.pictureApi, required this.pictureMapper});
  final PictureApi pictureApi;
  final PictureMapper pictureMapper;

  @override
  Future<List<Picture>> takePictures() async {
    final networkPictures = await pictureApi.takePictures();
    final pictures = <Picture>[];

    await Future.forEach<NetworkPicture>(networkPictures,
        (networkPicture) async {
      pictures.add(pictureMapper.mapFromNetwork(
        networkPicture,
      ));
    });
    return pictures;
  }
}
