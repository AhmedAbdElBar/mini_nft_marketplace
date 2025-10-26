import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace/core/resources/padding_margin_value_manager.dart';

class CustomCardForRankingPage extends StatelessWidget {
  const CustomCardForRankingPage(
      {super.key,
      required this.index,
      required this.imagePath,
      required this.title,
      required this.supTitle,
      required this.count,
      required this.percentage});
  final int index;
  final String imagePath;
  final String title;
  final String supTitle;
  final num count;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: PaddingValueManager.vP8,
          vertical: PaddingValueManager.vP10),
      height: 80,
      child: Row(
        children: [
          Text("${index + 1}"),
          const SizedBox(
            width: 5,
          ),
          Image(
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
              Text(supTitle),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$count"),
              Text(percentage),
            ],
          )
        ],
      ),
    );
  }
}
