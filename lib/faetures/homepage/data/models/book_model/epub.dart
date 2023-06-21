import 'package:equatable/equatable.dart';

class Epub extends Equatable {
  final bool? isAvailable;
  final String? acsTokenLink;

  const Epub({this.isAvailable, this.acsTokenLink});

  factory Epub.fromBookData(Map<String, dynamic> json) => Epub(
        isAvailable: json['isAvailable'] as bool?,
        acsTokenLink: json['acsTokenLink'] as String?,
      );

  Map<String, dynamic> toBookData() => {
        'isAvailable': isAvailable,
        'acsTokenLink': acsTokenLink,
      };

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
