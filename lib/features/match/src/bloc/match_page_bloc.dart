import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/feed/infrastructure.dart';

abstract class MacthPageEvent {}

class MacthPageState {
  MacthPageState();

  MatchData get matchData => ApiClient.getResult();
}

class MacthPageBloc extends Bloc<MacthPageEvent, MacthPageState> {
  MacthPageBloc() : super(MacthPageState());
}
