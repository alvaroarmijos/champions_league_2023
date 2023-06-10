import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/feed/infrastructure.dart';

abstract class TeamPageEvent {}

class TeamPageState {
  TeamPageState();

  //This ApiClient must be with DI
  Team get team => ApiClient().getTeam();
}

class TeamPageBloc extends Bloc<TeamPageEvent, TeamPageState> {
  TeamPageBloc() : super(TeamPageState());
}
