import 'package:api_picture_app/data/api/picture_api.dart';
import 'package:api_picture_app/data/mappers/picture_mapper.dart';
import 'package:api_picture_app/data/repository/picture_repository_impl.dart';
import 'package:api_picture_app/domain/repository/picture_repository.dart';
import 'package:api_picture_app/domain/usecases/take_pictures_usecase.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'presentation/screens/main_screen/main_screen_cubit.dart';

final sl = GetIt.instance;
final dio = Dio();

Future<void> init() async {
//Bloc
  sl
    ..registerFactory(
      () => MainScreenCubit(
        takePicturesUsecase: sl(),
      ),
    )

//UseCases
    ..registerLazySingleton(() => TakePicturesUsecase(sl()))

//Repository
    ..registerLazySingleton<PictureRepository>(
      () => PictureRepositoryImpl(pictureApi: PictureApi(dio), pictureMapper: PictureMapper()),
    );
}
