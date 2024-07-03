import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_dimens.dart';
import 'package:toonflix/constant/app_urls.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  final WebtoonEpisodeModel episode;
  final String webtoonId;

  onButtonTab() async {
    final url =
        Uri.parse("${AppUrls.webtoonUrl}?titleId=$webtoonId&no=${episode.id}");
    await launchUrl(url);
    // await launchUrlString("${AppUrls.googleUrl}");
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTab,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: AppColors.green400,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                episode.thumb,
                height: 30,
                headers: const {
                  'Referer': AppUrls.referUrl,
                },
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    episode.title,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: AppDimens.fontSize16,
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
