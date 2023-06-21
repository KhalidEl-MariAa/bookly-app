import 'package:equatable/equatable.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromBookData(Map<String, dynamic> json) => BookModel(
        kind: json['kind'] as String?,
        id: json['id'] as String?,
        etag: json['etag'] as String?,
        selfLink: json['selfLink'] as String?,
        volumeInfo: json['volumeInfo'] == null
            ? null
            : VolumeInfo.fromBookData(
                json['volumeInfo'] as Map<String, dynamic>),
        saleInfo: json['saleInfo'] == null
            ? null
            : SaleInfo.fromBookData(json['saleInfo'] as Map<String, dynamic>),
        accessInfo: json['accessInfo'] == null
            ? null
            : AccessInfo.fromBookData(
                json['accessInfo'] as Map<String, dynamic>),
        searchInfo: json['searchInfo'] == null
            ? null
            : SearchInfo.fromBookData(
                json['searchInfo'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toBookData() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo?.toBookData(),
        'saleInfo': saleInfo?.toBookData(),
        'accessInfo': accessInfo?.toBookData(),
        'searchInfo': searchInfo?.toBookData(),
      };

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
      searchInfo,
    ];
  }
}
