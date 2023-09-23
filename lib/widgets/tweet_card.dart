import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:numeral/ext.dart';
import 'package:twitter_example/constants.dart';
import 'package:twitter_example/models/tweet.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;
  const TweetCard({
    super.key,
    required this.tweet,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/profile.jpg",
            height: 60,
            width: 60,
          ),
          const SizedBox(width: 20),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      tweet.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset(
                      "assets/icons/twitter-verified.svg",
                      color: kprimaryColor,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "@${tweet.username} - ",
                      style: const TextStyle(
                        color: kcontentColor,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      tweet.time,
                      style: const TextStyle(
                        color: kcontentColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Text(
                  tweet.tweet,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/twitter-reply-outline.svg",
                      color: kcontentColor,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      tweet.comments.numeral(),
                      style: const TextStyle(
                        color: kcontentColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/twitter-retweet.svg",
                      color: kcontentColor,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      tweet.shares.numeral(),
                      style: const TextStyle(
                        color: kcontentColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/twitter-like-outline.svg",
                      color: kcontentColor,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      tweet.likes.numeral(),
                      style: const TextStyle(
                        color: kcontentColor,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/icons/twitter-analytics.svg",
                      color: kcontentColor,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      tweet.views.numeral(),
                      style: const TextStyle(
                        color: kcontentColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.file_upload_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
