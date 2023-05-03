import 'package:equatable/equatable.dart';

class PictureScreenState extends Equatable {
  const PictureScreenState({this.picture = '', this.isLoading = false});
  final String picture;
  final bool isLoading;

  @override
  List<Object> get props => [picture, isLoading];

  PictureScreenState copyWith({
    String? picture,
    bool? isLoading,
  }) =>
      PictureScreenState(
        picture: picture ?? this.picture,
        isLoading: isLoading ?? this.isLoading,
      );
}
