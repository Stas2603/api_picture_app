import '../../domain/entity/picture.dart';
import '../entity/network_picture.dart';

class PictureFromIdMapper {
  PictureFromIdMapper();

  Picture mapFromNetwork(
    NetworkPicture networkPicture,
  ) =>
      Picture(
        id: networkPicture.id,
        autor: networkPicture.autor.autor,
        title: networkPicture.title,
        photo: networkPicture.picture.imageUrl,
      );
}
