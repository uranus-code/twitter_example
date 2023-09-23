import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_example/constants.dart';
import 'package:twitter_example/models/tweet.dart';
import 'package:numeral/ext.dart';
import 'package:twitter_example/widgets/tweet_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Image.asset(
                "assets/images/logo.png",
                width: 40,
                height: 40,
              ),
              centerTitle: true,
              leading: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset("assets/images/profile.jpg"),
              ),
              bottom: const TabBar(
                unselectedLabelColor: kcontentColor,
                indicatorColor: kprimaryColor,
                labelStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: Colors.white,
                tabs: [
                  Tab(text: "For you"),
                  Tab(text: "Following"),
                  Tab(text: "Subscribed"),
                ],
              ),
            )
          ],
          body: TabBarView(
            children: [
              ListView.separated(
                itemBuilder: (context, index) => TweetCard(
                  tweet: tweets[index],
                ),
                separatorBuilder: (context, index) => const Divider(
                  color: kcontentColor,
                  thickness: 0.1,
                ),
                itemCount: tweets.length,
              ),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
