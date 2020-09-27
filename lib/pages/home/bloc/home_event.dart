part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeFetched extends HomeEvent {}

class HomeFilter extends HomeEvent {
  final String selected;

  HomeFilter(this.selected);
}
