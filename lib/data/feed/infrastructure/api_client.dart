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
}
