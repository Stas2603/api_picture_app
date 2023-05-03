import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'data/api/picture_api.dart';
import 'data/mappers/picture_mapper.dart';
import 'data/repository/picture_repository_impl.dart';
import 'domain/repository/picture_repository.dart';
import 'domain/usecases/take_picture_from_id_usecase.dart';
import 'domain/usecases/take_pictures_usecase.dart';
import 'presentation/screens/main_screen/main_screen_cubit.dart';
import 'presentation/screens/picture_screen/picture_screen_cubit.dart';

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
    ..registerFactory(
      () => PictureScreenCubit(
        takePictureFromIdUsecase: sl(),
      ),
    )

//UseCases
    ..registerLazySingleton(() => TakePicturesUsecase(sl()))
    ..registerLazySingleton(() => TakePictureFromIdUsecase(sl()))

//Repository
    ..registerLazySingleton<PictureRepository>(
      () => PictureRepositoryImpl(
        pictureApi: PictureApi(dio),
        pictureMapper: PictureMapper(),
      ),
    );
}
