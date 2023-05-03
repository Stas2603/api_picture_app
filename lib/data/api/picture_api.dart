import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../entity/network_picture.dart';

part 'picture_api.g.dart';

@RestApi(
    baseUrl:
        'https://api.unsplash.com')
abstract class PictureApi {
  factory PictureApi(Dio dio, {String baseUrl}) = _PictureApi;

  @GET("/photos/?client_id=bWNCkjKVpbm32uiuTcL3rB-iFquRYk781wGD7RMmB1o")
  Future<List<NetworkPicture>> takePictures();
}
