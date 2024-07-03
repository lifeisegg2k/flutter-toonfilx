import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName, currencyAmount, currencyUnit;
  final IconData currencyIcon;
  final bool isInverted;

  final _blackColor = AppColors.bgColorBlack02;
  final _whiteColor = AppColors.white;

  const CurrencyCard({
    super.key,
    required this.currencyName,
    required this.currencyAmount,
    required this.currencyUnit,
    required this.currencyIcon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? _whiteColor : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currencyName,
                  style: TextStyle(
                    color: isInverted ? _blackColor : _whiteColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      currencyAmount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : _whiteColor,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      currencyUnit,
                      style: TextStyle(
                        color: isInverted
                            ? _blackColor
                            : _whiteColor.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(
                  -5,
                  12,
                ),
                child: Icon(
                  currencyIcon,
                  color: isInverted ? _blackColor : _whiteColor,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
