import 'package:champions_league_2023/data/feed/domain.dart';

class ApiClient {
  static List<News> getNews() {
    return [
      News(
        title: "Halaand grabs late win for City",
        date: "March 03, 2023",
        chip: "MW 22",
        url: Uri.parse(
            "https://www.newsletter.co.uk/webimg/b25lY21zOjVjZTBmYjczLTk5ZGItNGI0MS05NDU1LTc2NWRmNjkxNjU0ODpmODBlY2E2ZC1hNTBkLTQ3YTMtOWI1Yy04MmU4ZTVlMDhkZmE=.jpg"),
      ),
      News(
        title: "Halaand grabs late win for City",
        date: "March 03, 2023",
        chip: "MW 22",
        url: Uri.parse(
            "https://www.newsletter.co.uk/webimg/b25lY21zOjVjZTBmYjczLTk5ZGItNGI0MS05NDU1LTc2NWRmNjkxNjU0ODpmODBlY2E2ZC1hNTBkLTQ3YTMtOWI1Yy04MmU4ZTVlMDhkZmE=.jpg"),
      ),
      News(
        title: "Halaand grabs late win for City",
        date: "March 03, 2023",
        chip: "MW 22",
        url: Uri.parse(
            "https://www.newsletter.co.uk/webimg/b25lY21zOjVjZTBmYjczLTk5ZGItNGI0MS05NDU1LTc2NWRmNjkxNjU0ODpmODBlY2E2ZC1hNTBkLTQ3YTMtOWI1Yy04MmU4ZTVlMDhkZmE=.jpg"),
      ),
    ];
  }

  static MatchResult getLatestResult() {
    return MatchResult(
      local: "MCI",
      imgLocal:
          "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-1.png",
      visit: "INT",
      imgVisit:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/FC_Internazionale_Milano_2021.svg/1200px-FC_Internazionale_Milano_2021.svg.png",
      result: "0 - 1",
    );
  }

  static MatchData getResult() {
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
        "Julián Álvarez '80",
      ],
      manOfTheMacth: ManOfTheMacth(
        name: "İlkay",
        lastName: "Gündoğan",
        shots: 4,
        assits: 1,
        infl: 6.7,
        dcPlayer: 12,
        dcAvg: 10,
        number: "8",
        image: "https://www.footyrenders.com/render/ilkay-gundogan-30.png",
      ),
      stats: [
        Stat(
          "POSSESSION(%)",
          68,
          32,
        ),
        Stat(
          "SHOTS",
          16,
          6,
        ),
        Stat(
          "ON TARGET",
          8,
          2,
        ),
      ],
    );
  }

  static Team getTeam() {
    return Team(
      name: "Manchester City FC",
      image:
          "https://logodownload.org/wp-content/uploads/2017/02/manchester-city-fc-logo-escudo-badge-1.png",
      stadium:
          "https://lh3.googleusercontent.com/TPU-d2OsLC9odQJ5FRJWAbv5t4PsD8v1wMgq1bGg6FBL-0o3YyjNlpSL856hGKIgm15JfdYhxyfj8TIgnobZv0tGxQ=w640-h400-e365-rj-sc0x00ffffff",
      stats: [
        TeamStat("Total", 22),
        TeamStat("Won", 18),
        TeamStat("Draw", 2),
        TeamStat("Lost", 1),
      ],
      recentForms: [
        TeamForm.win,
        TeamForm.win,
        TeamForm.win,
        TeamForm.lost,
        TeamForm.draw,
      ],
      players: [
        MostPlayer(
            "Erling",
            "Halaand",
            "Most Goals",
            "https://resources.premierleague.com/premierleague/photos/players/250x250/p223094.png",
            "9"),
        MostPlayer(
            "Kevin",
            "de Bryne",
            "Most Assists",
            "https://resources.premierleague.com/premierleague/photos/players/250x250/p61366.png",
            "17")
      ],
    );
  }
}
