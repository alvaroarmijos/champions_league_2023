import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

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
