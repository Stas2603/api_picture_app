import 'package:equatable/equatable.dart';

class Picture extends Equatable {
  const Picture({
    required this.id,
    required this.autor,
    required this.title,
    required this.photo,
  });

  final String id;
  final String autor;
  final String? title;
  final String photo;

  @override
  List<Object?> get props => [
        id,
        autor,
        title,
        photo
      ];
}
