import '../domain.dart';

abstract class FeedLocalDataSource {
  List<News> getNews();
  MatchResult getLatestResult();
  MatchData getResult();
  Team getTeam();
}

class FeedLocalDataSourceImpl implements FeedLocalDataSource {
  @override
  MatchResult getLatestResult() {
    return MatchResult(
      local: "MCI",
      imgLocal:
          "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-1.png",
      visit: "INT",
      imgVisit:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/FC_Internazionale_Milano_2021.svg/1200px-FC_Internazionale_Milano_2021.svg.png",
      result: "1 - 0",
    );
  }

  @override
  List<News> getNews() {
    return [
      News(
        title: "Man City win first Champions",
        date: "June 10, 2023",
        chip: "MW 22",
        url: Uri.parse(
            "https://editorial.uefa.com//resources/0282-1839ba745d1d-e0d27ca2f9fb-1000/format/free1/fbl-eur-c1-man_city-inter.jpeg?imwidth=2048"),
      ),
      News(
        title: "Man City vs Inter line-ups",
        date: "June 10, 2023",
        chip: "MW 22",
        url: Uri.parse(
            "https://assets-webp.khelnow.com/news/uploads/2023/06/Lead-Pic_9-June_Man-City-vs-Inter.jpg.webp"),
      ),
      News(
        title: "Champions League final referee",
        date: "June 10, 2023",
        chip: "MW 22",
        url: Uri.parse(
            "https://talksport.com/wp-content/uploads/sites/5/2023/06/referee-szymon-marciniak-gestures-uefa-822191005.jpg"),
      ),
    ];
  }

  @override
  MatchData getResult() {
    return MatchData(
      imageCover:
          "https://images2.minutemediacdn.com/image/upload/c_crop,w_3891,h_2188,x_0,y_136/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/images/GettyImages/mmsport/90min_es_international_web/01grdw5ve2px38t9crp7.jpg",
      finalScore: FinalScore(
        score: "1 - 0",
        local: "MCI",
        imgLocal:
            "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-1.png",
        visit: "INT",
        imgVisit:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/FC_Internazionale_Milano_2021.svg/1200px-FC_Internazionale_Milano_2021.svg.png",
      ),
      goals: [
        "Rodri '68",
      ],
      manOfTheMacth: ManOfTheMacth(
        name: "",
        lastName: "Rodri",
        goals: 1,
        assits: 0,
        infl: 8.7,
        dcPlayer: 12,
        dcAvg: 10,
        number: "16",
        image:
            "https://uniqrenders.com/Uploads/25-3-2023/2148/rodri-manchester-city-premier-league-spain-spanish-footballers-uniqrenders.com.png",
      ),
      stats: [
        Stat(
          "POSSESSION(%)",
          58,
          42,
        ),
        Stat(
          "Total attempts",
          7,
          14,
        ),
        Stat(
          "Saves",
          5,
          3,
        ),
      ],
    );
  }

  @override
  Team getTeam() {
    return Team(
      name: "Manchester City FC",
      image:
          "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-1.png",
      stadium:
          "https://lh3.googleusercontent.com/TPU-d2OsLC9odQJ5FRJWAbv5t4PsD8v1wMgq1bGg6FBL-0o3YyjNlpSL856hGKIgm15JfdYhxyfj8TIgnobZv0tGxQ=w640-h400-e365-rj-sc0x00ffffff",
      stats: [
        TeamStat("Total", 12),
        TeamStat("Won", 7),
        TeamStat("Draw", 5),
        TeamStat("Lost", 0),
      ],
      recentForms: [
        TeamForm.win,
        TeamForm.draw,
        TeamForm.draw,
        TeamForm.win,
        TeamForm.win,
      ],
      players: [
        MostPlayer(
            "Erling",
            "Haaland",
            "Most Goals",
            "https://resources.premierleague.com/premierleague/photos/players/250x250/p223094.png",
            "12"),
        MostPlayer(
            "Kevin",
            "De Bruyne",
            "Most Assists",
            "https://resources.premierleague.com/premierleague/photos/players/250x250/p61366.png",
            "7")
      ],
    );
  }
}
