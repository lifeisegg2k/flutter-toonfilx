import 'package:flutter/material.dart';
import 'package:toonflix/constant/constant.dart';
import 'package:toonflix/screens/webtoon_detail_screen.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;

  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebtoonDetailScreen(
              id: id,
              title: title,
              thumb: thumb,
            ),
            fullscreenDialog: true,
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: id,
            child: Container(
              width: 250,
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
                thumb,
                headers: const {
                  'Referer': AppUrls.referUrl,
                },
              ),
            ),
          ),
          const SizedBox(height: AppDimens.dSize010),
          Text(
            title,
            style: const TextStyle(
              fontSize: AppDimens.fontSize22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
