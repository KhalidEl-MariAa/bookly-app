import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'offer.dart';
import 'retail_price.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;
  final String? buyLink;
  final List<Offer>? offers;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  factory SaleInfo.fromBookData(Map<String, dynamic> json) => SaleInfo(
        country: json['country'] as String?,
        saleability: json['saleability'] as String?,
        isEbook: json['isEbook'] as bool?,
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromBookData(json['listPrice'] as Map<String, dynamic>),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromBookData(
                json['retailPrice'] as Map<String, dynamic>),
        buyLink: json['buyLink'] as String?,
        offers: (json['offers'] as List<dynamic>?)
            ?.map((e) => Offer.fromBookData(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toBookData() => {
        'country': country,
        'saleability': saleability,
        'isEbook': isEbook,
        'listPrice': listPrice?.toBookData(),
        'retailPrice': retailPrice?.toBookData(),
        'buyLink': buyLink,
        'offers': offers?.map((e) => e.toBookData()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      country,
      saleability,
      isEbook,
      listPrice,
      retailPrice,
      buyLink,
      offers,
    ];
  }
}
