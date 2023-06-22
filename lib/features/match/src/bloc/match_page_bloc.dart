import 'dart:async';

import 'package:champions_league_2023/data/feed/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_activities/live_activities.dart';
import 'package:live_activities/models/live_activity_image.dart';

import '../../../../data/feed/infrastructure.dart';

abstract class MacthPageEvent {}

class InitLiveActivitiesEvent extends MacthPageEvent {}

class MacthPageState {
  MacthPageState();

  //This ApiClient must be with DI
  MatchData get matchData => ApiClient().getResult();
}

class MacthPageBloc extends Bloc<MacthPageEvent, MacthPageState> {
  MacthPageBloc() : super(MacthPageState()) {
    on<InitLiveActivitiesEvent>(_onInitLiveActivitiesEvent);
  }

  FutureOr<void> _onInitLiveActivitiesEvent(
    InitLiveActivitiesEvent event,
    Emitter emit,
  ) async {
    //move this to UseCase
    final liveActivitiesPlugin = LiveActivities();

    MatchLiveActivity? matchLiveActivity = MatchLiveActivity(
      matchName: 'Champions League ⚽️',
      teamAName: 'CITY',
      teamAState: 'Home',
      teamBName: 'INTER',
      teamALogo: LiveActivityImageFromAsset('assets/images/man_city.png'),
      teamBLogo: LiveActivityImageFromAsset('assets/images/inter.png'),
      teamBState: 'Guest',
      matchStartDate: DateTime.now(),
      matchEndDate: DateTime.now().add(
        const Duration(
          minutes: 6,
          seconds: 30,
        ),
      ),
    );

    liveActivitiesPlugin.init(appGroupId: "group.lalo.liveactivities");

    liveActivitiesPlugin.createActivity(matchLiveActivity.toMap());
  }

  void onInitLiveActivitiesEvent() {
    add(InitLiveActivitiesEvent());
  }
}
