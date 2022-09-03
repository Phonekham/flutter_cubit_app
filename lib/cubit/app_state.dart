part of 'app_cubit.dart';

@immutable
abstract class AppState extends Equatable {}

class AppInitial extends AppState {
  @override
  List<Object> get props => [];
}

class WelcomeState extends AppState {
  @override
  List<Object> get props => [];
}

class LoadingState extends AppState {
  @override
  List<Object> get props => [];
}

class LoadedState extends AppState {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  List<Object> get props => [places];
}

class DetailState extends AppState {
  DetailState(this.place);
  final DataModel place;
  @override
  List<Object> get props => [place];
}
