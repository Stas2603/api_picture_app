
import 'package:api_picture_app/data/entity/network_picture.dart';
import 'package:api_picture_app/domain/entity/picture.dart';

class PictureMapper {
  PictureMapper(

  );

  Picture mapFromNetwork(
    NetworkPicture networkPicture,
  ) {
    return Picture(
      id: networkPicture.id,
      autor: networkPicture.autor.autor,
      title: networkPicture.title,
      photo: networkPicture.picture.imageUrl
    );
  }
}
