import '../../domain/entity/picture.dart';
import '../../domain/repository/picture_repository.dart';
import '../api/picture_api.dart';
import '../entity/network_picture.dart';
import '../mappers/picture_mapper.dart';

class PictureRepositoryImpl extends PictureRepository {
  PictureRepositoryImpl({
    required this.pictureApi,
    required this.pictureMapper,
  });
  final PictureApi pictureApi;
  final PictureMapper pictureMapper;

  @override
  Future<List<Picture>> takePictures() async {
    final networkPictures = await pictureApi.takePictures();
    final pictures = <Picture>[];

    await Future.forEach<NetworkPicture>(networkPictures,
        (networkPicture) async {
      pictures.add(
        pictureMapper.mapFromNetwork(
          networkPicture,
        ),
      );
    });
    return pictures;
  }

  @override
  Future<String> takePictureFromId(String id) async {
    final networkPicture = await pictureApi.takePictureFromId(id);
    return networkPicture.image.link;
  }
}
