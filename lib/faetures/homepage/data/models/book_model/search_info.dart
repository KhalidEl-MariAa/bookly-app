import 'package:equatable/equatable.dart';

class SearchInfo extends Equatable {
  final String? textSnippet;

  const SearchInfo({this.textSnippet});

  factory SearchInfo.fromBookData(Map<String, dynamic> json) => SearchInfo(
        textSnippet: json['textSnippet'] as String?,
      );

  Map<String, dynamic> toBookData() => {
        'textSnippet': textSnippet,
      };

  @override
  List<Object?> get props => [textSnippet];
}
