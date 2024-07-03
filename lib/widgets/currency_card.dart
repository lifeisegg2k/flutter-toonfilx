import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_dimens.dart';

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
                    fontSize: AppDimens.fontSize32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                sizeBox(heightSize: AppDimens.dSize020),
                Row(
                  children: [
                    Text(
                      currencyAmount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : _whiteColor,
                        fontSize: AppDimens.fontSize20,
                      ),
                    ),
                    sizeBox(widthSize: AppDimens.dSize005),
                    Text(
                      currencyUnit,
                      style: TextStyle(
                        color: isInverted
                            ? _blackColor
                            : _whiteColor.withOpacity(0.8),
                        fontSize: AppDimens.fontSize20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: AppDimens.offsetPattern2,
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

  SizedBox sizeBox({double widthSize = 0.0, double heightSize = 0.0}) {
    return SizedBox(
      height: heightSize,
      width: widthSize,
    );
  }
}
