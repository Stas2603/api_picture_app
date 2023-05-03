import 'package:equatable/equatable.dart';
import '../../../domain/entity/picture.dart';

class MainScreenState extends Equatable {
  const MainScreenState({this.pictures = const [], this.isLoading = false});
  final List<Picture> pictures;
  final bool isLoading;

  @override
  List<Object> get props => [pictures, isLoading];

  MainScreenState copyWith({
    List<Picture>? pictures,
    bool? isLoading,
  }) =>
      MainScreenState(
        pictures: pictures ?? this.pictures,
        isLoading: isLoading ?? this.isLoading,
      );
}
