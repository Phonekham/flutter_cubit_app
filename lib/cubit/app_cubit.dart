import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_cubit/model/data_model.dart';
import 'package:flutter_cubit/services/data_services.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required this.data}) : super(AppInitial()) {
    emit(WelcomeState());
  }

  final DataService data;
  late final places;
  Future<void> getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
