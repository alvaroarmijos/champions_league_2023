import 'dart:async';

import 'package:champions_league_2023/data/feed/infrastructure/api_client.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/feed/domain.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(HomePageState()) {
    on<ChangeNewsEvent>(_onChangeNewsEvent);
  }

  FutureOr<void> _onChangeNewsEvent(
    ChangeNewsEvent event,
    Emitter emit,
  ) async {
    emit(state.copyWith(currentIndex: event.currentIndex));
  }

  void onChangeNewsEvent(int currentIndex) {
    add(ChangeNewsEvent(currentIndex));
  }
}
