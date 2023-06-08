part of 'home_page_bloc.dart';

class HomePageState {
  final int currentIndex;

  HomePageState({
    this.currentIndex = 0,
  });

  HomePageState copyWith({
    int? currentIndex,
  }) {
    return HomePageState(
      currentIndex: currentIndex ?? this.currentIndex,
    );
  }
}
