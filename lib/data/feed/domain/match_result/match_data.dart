class MatchData {
  final FinalScore finalScore;
  final List<String> goals;
  final ManOfTheMacth manOfTheMacth;
  final List<Stat> stats;
  final String imageCover;

  MatchData({
    required this.finalScore,
    required this.goals,
    required this.manOfTheMacth,
    required this.stats,
    required this.imageCover,
  });
}

class FinalScore {
  final String score;
  final String local;
  final String imgLocal;
  final String visit;
  final String imgVisit;

  FinalScore({
    required this.score,
    required this.local,
    required this.imgLocal,
    required this.visit,
    required this.imgVisit,
  });
}

class ManOfTheMacth {
  final String name;
  final String lastName;
  final int goals;
  final int assits;
  final double infl;
  final int dcPlayer;
  final int dcAvg;
  final String image;
  final String number;

  ManOfTheMacth({
    required this.name,
    required this.lastName,
    required this.goals,
    required this.assits,
    required this.infl,
    required this.dcPlayer,
    required this.dcAvg,
    required this.image,
    required this.number,
  });
}

class Stat {
  final String label;
  final int local;
  final int visit;

  Stat(
    this.label,
    this.local,
    this.visit,
  );
}
