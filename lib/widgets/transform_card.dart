import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_dimens.dart';
import 'package:toonflix/widgets/currency_card.dart';

class TransformCard extends StatelessWidget {
  final double order;
  final String currencyName, currencyAmount, currencyUnit;
  final IconData currencyIcon;

  const TransformCard({
    super.key,
    required this.order,
    required this.currencyName,
    required this.currencyAmount,
    required this.currencyUnit,
    required this.currencyIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
        0,
        (AppDimens.offsetSize * order),
      ),
      child: CurrencyCard(
        currencyName: currencyName,
        currencyAmount: currencyAmount,
        currencyUnit: currencyUnit,
        currencyIcon: currencyIcon,
        isInverted: (order % 2 == 1),
      ),
    );
  }
}
