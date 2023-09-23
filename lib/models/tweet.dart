class Tweet {
  String name;
  String username;
  String tweet;
  int comments;
  int shares;
  int likes;
  int views;
  String time;

  Tweet({
    required this.name,
    required this.username,
    required this.tweet,
    required this.comments,
    required this.shares,
    required this.likes,
    required this.views,
    required this.time,
  });
}

final List<Tweet> tweets = [
  Tweet(
    name: "DogeDesigner",
    username: "cd_doge",
    tweet:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    comments: 3194,
    shares: 10500,
    likes: 116000,
    views: 11400000,
    time: "1h",
  ),
  Tweet(
    name: "DogeDesigner",
    username: "cd_doge",
    tweet:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quisque id diam vel quam elementum. Feugiat in ante metus dictum at tempor.",
    comments: 2000,
    shares: 500,
    likes: 10000,
    views: 5000000,
    time: "3h",
  ),
  Tweet(
    name: "DogeDesigner",
    username: "cd_doge",
    tweet:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ultricies lacus sed turpis tincidunt id aliquet.",
    comments: 2520,
    shares: 6400,
    likes: 12000,
    views: 5000000,
    time: "5h",
  ),
  Tweet(
    name: "DogeDesigner",
    username: "cd_doge",
    tweet:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
    comments: 652,
    shares: 360,
    likes: 9500,
    views: 6000000,
    time: "30m",
  ),
];
