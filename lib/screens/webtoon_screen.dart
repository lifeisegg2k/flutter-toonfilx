import 'package:flutter/material.dart';
import 'package:toonflix/constant/app_colors.dart';
import 'package:toonflix/constant/app_dimens.dart';
import 'package:toonflix/constant/app_string.dart';
import 'package:toonflix/services/api_service.dart';
import 'package:toonflix/models/webtoon_model.dart';
import 'package:toonflix/widgets/webtoon_widget.dart';

class WebToonScreen extends StatelessWidget {
  WebToonScreen({
    super.key,
  });

  final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    // print(webtoons);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppColors.white38,
        foregroundColor: AppColors.green,
        title: const Text(
          "Today's WebToon",
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            // ### Ex) Nomal ListView #######
            // return makeListNomal(snapshot);
            //
            // ### Ex) ListView.builder #######
            // return makeListBuilder(snapshot);
            //
            // ### ListView.separated #######
            return Column(
              children: [
                sizeBox(heightSize: AppDimens.dSize050),
                Expanded(
                  child: makeList(snapshot),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  SizedBox sizeBox({double widthSize = 0.0, double heightSize = 0.0}) {
    return SizedBox(
      height: heightSize,
      width: widthSize,
    );
  }

  ListView makeList(AsyncSnapshot<dynamic> snapshot) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: snapshot.data!.length,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      itemBuilder: (context, index) {
        var webtoon = snapshot.data![index];
        return Webtoon(
          title: webtoon.title,
          thumb: webtoon.thumb,
          id: webtoon.id,
        );
      },
      separatorBuilder: (context, index) =>
          sizeBox(widthSize: AppDimens.dSize040),
    );
  }
}

ListView makeListNomal(AsyncSnapshot<dynamic> snapshot) {
  return ListView(
    children: [for (var webtoon in snapshot.data!) Text(webtoon.title)],
  );
}

ListView makeListBuilder(AsyncSnapshot<dynamic> snapshot) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: snapshot.data!.length,
    itemBuilder: (context, index) {
      // print(index);
      var webtoon = snapshot.data![index];
      return Text(webtoon.title);
    },
  );
}

class WebToonScreenOld extends StatefulWidget {
  const WebToonScreenOld({super.key});

  @override
  State<WebToonScreenOld> createState() => _WebToonScreenOldState();
}

class _WebToonScreenOldState extends State<WebToonScreenOld> {
  List<WebtoonModel> webtoons = [];
  bool isLoading = true;

  void waitForWebToons() async {
    webtoons = await ApiService.getTodaysToons();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    waitForWebToons();
  }

  // 1. initState
  // 2. waitForWebtoons
  // 3. ApiService.getTodaysToons
  // 4. build
  // 5. response data
  // 6. isLoading = false
  // 7. setState
  // 8. build
  @override
  Widget build(BuildContext context) {
    // print(webtoons);
    // print(isLoading);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 3,
        backgroundColor: AppColors.white38,
        foregroundColor: AppColors.green,
        title: const Text(
          AppString.titleWebtoon,
          style: TextStyle(
            fontSize: AppDimens.fontSize24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
