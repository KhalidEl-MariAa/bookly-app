import 'package:equatable/equatable.dart';

import 'list_price.dart';
import 'retail_price.dart';

class Offer extends Equatable {
  final int? finskyOfferType;
  final ListPrice? listPrice;
  final RetailPrice? retailPrice;

  const Offer({this.finskyOfferType, this.listPrice, this.retailPrice});

  factory Offer.fromBookData(Map<String, dynamic> json) => Offer(
        finskyOfferType: json['finskyOfferType'] as int?,
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromBookData(json['listPrice'] as Map<String, dynamic>),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromBookData(
                json['retailPrice'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toBookData() => {
        'finskyOfferType': finskyOfferType,
        'listPrice': listPrice?.toBookData(),
        'retailPrice': retailPrice?.toBookData(),
      };

  @override
  List<Object?> get props => [finskyOfferType, listPrice, retailPrice];
}
