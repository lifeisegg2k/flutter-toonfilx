import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_string.dart';
import 'package:toonflix/widgets/round_button.dart';
import 'package:toonflix/widgets/transform_card.dart';

class WalletsScreen extends StatelessWidget {
  const WalletsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // CupertinoApp() iOS風
    // MaterialApp()  Android風
    return Scaffold(
      backgroundColor: AppColors.bgColorBlack01,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: AppColors.lightBlue,
        foregroundColor: AppColors.white,
        title: const Text(
          AppString.titleWallet,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        AppString.heySelena,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        AppString.welcomBack,
                        style: TextStyle(
                          color: AppColors.whiteOpacity08,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Text(
                AppString.totalBalance,
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.whiteOpacity08,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                AppString.amount,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundButton(
                    btnText: AppString.transfer,
                    btnBgColor: AppColors.bgColorYellow,
                    btnTextColor: AppColors.black,
                  ),
                  RoundButton(
                    btnText: AppString.request,
                    btnBgColor: AppColors.bgColorBlack02,
                    btnTextColor: AppColors.white,
                  ),
                ],
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(AppString.wallets,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: AppColors.white,
                      )),
                  Text(AppString.viewAll,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.whiteOpacity08,
                      )),
                ],
              ),
              const SizedBox(height: 20),
              const TransformCard(
                currencyName: AppString.euroTitle,
                currencyAmount: AppString.euroAmount,
                currencyUnit: AppString.euroMark,
                currencyIcon: Icons.euro_rounded,
                order: 0,
              ),
              const TransformCard(
                currencyName: AppString.bitcoinTitle,
                currencyAmount: AppString.bitcoinAmount,
                currencyUnit: AppString.bitcoinMark,
                currencyIcon: Icons.currency_bitcoin_rounded,
                order: 1,
              ),
              const TransformCard(
                currencyName: AppString.dollarTitle,
                currencyAmount: AppString.dollarAmount,
                currencyUnit: AppString.dollarMark,
                currencyIcon: Icons.monetization_on_outlined,
                order: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
