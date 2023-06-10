enum TeamForm { win, lost, draw }

class Team {
  final String name;
  final String image;
  final String stadium;
  final List<TeamStat> stats;
  final List<TeamForm> recentForms;
  final List<MostPlayer> players;

  Team({
    required this.name,
    required this.image,
    required this.stadium,
    required this.stats,
    required this.recentForms,
    required this.players,
  });
}

class TeamStat {
  final String label;
  final int value;

  TeamStat(
    this.label,
    this.value,
  );
}

class MostPlayer {
  final String name;
  final String lastName;
  final String label;
  final String image;
  final String number;

  MostPlayer(
    this.name,
    this.lastName,
    this.label,
    this.image,
    this.number,
  );
}
