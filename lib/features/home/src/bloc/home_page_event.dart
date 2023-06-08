part of 'home_page_bloc.dart';

abstract class HomePageEvent {}

class ChangeNewsEvent extends HomePageEvent {
  final int currentIndex;

  ChangeNewsEvent(this.currentIndex);
}
