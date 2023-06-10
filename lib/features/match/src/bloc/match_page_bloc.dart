import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/feed/infrastructure.dart';

abstract class MacthPageEvent {}

class MacthPageState {
  final int currentIndex;

  MacthPageState({
    this.currentIndex = 0,
  });

  MatchData get matchData => ApiClient.getResult();

  MacthPageState copyWith({
    int? currentIndex,
  }) {
    return MacthPageState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}

class MacthPageBloc extends Bloc<MacthPageEvent, MacthPageState> {
  MacthPageBloc() : super(MacthPageState());
}
