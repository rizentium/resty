part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();
}

class StateInitial extends HomeState {
  @override
  List<Object> get props => [];
}

class StateLoading extends HomeState {
  @override
  List<Object> get props => [];
}

class StateSuccess extends HomeState {
  final GeocodeModel data;
  final GeocodeModel popular;
  final String selected;

  StateSuccess({this.data, this.popular, this.selected});

  @override
  List<Object> get props => [data, popular, selected];
}

class StateFailure extends HomeState {
  final dynamic data;

  StateFailure({this.data});

  @override
  List<Object> get props => [data];
}
