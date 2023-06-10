import 'package:champions_league_2023/data/feed/domain.dart';

import '../infrastructure.dart';

class ApiClient {
  //This must be with DI
  final _feedLocalDataSourceImpl = FeedLocalDataSourceImpl();

  List<News> getNews() => _feedLocalDataSourceImpl.getNews();

  MatchResult getLatestResult() => _feedLocalDataSourceImpl.getLatestResult();

  MatchData getResult() => _feedLocalDataSourceImpl.getResult();

  Team getTeam() => _feedLocalDataSourceImpl.getTeam();
}
