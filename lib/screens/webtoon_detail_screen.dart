import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_dimens.dart';
import 'package:toonflix/constant/app_string.dart';
import 'package:toonflix/constant/app_urls.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/models/webtoon_detail_model.dart';
import 'package:toonflix/models/webtoon_episode_model.dart';
import 'package:toonflix/widgets/episode_widget.dart';

class WebtoonDetailScreen extends StatefulWidget {
  final String title, thumb, id;

  const WebtoonDetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  State<WebtoonDetailScreen> createState() => _WebtoonDetailScreenState();
}

class _WebtoonDetailScreenState extends State<WebtoonDetailScreen> {
  late Future<WebtoonDetailModel> webtoon;
  late Future<List<WebtoonEpisodeModel>> episodes;
  // Obtain shared preferences.
  late SharedPreferences prefs;
  final String prefsKey = AppString.prefsKey;
  bool isLiked = false;

  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final liskeToons = prefs.getStringList(prefsKey);
    if (liskeToons != null) {
      if (liskeToons.contains(widget.id) == true) {
        setState(() {
          isLiked = true;
        });
      }
    } else {
      await prefs.setStringList(prefsKey, []);
    }
  }

  @override
  void initState() {
    super.initState();
    webtoon = ApiService.getToonByID(widget.id);
    episodes = ApiService.getLatestEpisodesByID(widget.id);
    initPrefs();
  }

  onHeartTab() async {
    final likedToons = prefs.getStringList(prefsKey);
    if (likedToons != null) {
      if (isLiked) {
        likedToons.remove(widget.id);
      } else {
        likedToons.add(widget.id);
      }
      await prefs.setStringList(prefsKey, likedToons);
    }
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppColors.white38,
        foregroundColor: AppColors.green,
        actions: [
          IconButton(
            onPressed: onHeartTab,
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_outline_outlined,
            ),
          ),
        ],
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: widget.id,
                    child: Container(
                      width: 300,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            offset: AppDimens.offsetPattern1,
                            color: AppColors.black38,
                          ),
                        ],
                      ),
                      child: Image.network(
                        widget.thumb,
                        headers: const {
                          'Referer': AppUrls.referUrl,
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppDimens.dSize020),
              FutureBuilder(
                future: webtoon,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${snapshot.data!.genre} / ${snapshot.data!.age}',
                          style: const TextStyle(
                            fontSize: AppDimens.fontSize16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: AppDimens.dSize010),
                        Text(
                          snapshot.data!.about,
                          style: const TextStyle(
                            fontSize: AppDimens.fontSize16,
                          ),
                        ),
                      ],
                    );
                  }
                  return const Text(AppString.shorthand);
                },
              ),
              const SizedBox(height: AppDimens.dSize020),
              FutureBuilder(
                future: episodes,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: [
                        for (var episode in snapshot.data!.length > 10
                            ? snapshot.data!.sublist(0, 10)
                            : snapshot.data!)
                          Episode(
                            episode: episode,
                            webtoonId: widget.id,
                          ),
                      ],
                    );
                  }
                  return Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
