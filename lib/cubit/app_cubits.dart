
import 'package:bloc/bloc.dart';
import 'package:my_second_project/cubit/app_cubit_states.dart';
import 'package:my_second_project/services/data_services.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits({required this.data}): super(InitialState()){
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;

  Future<void> getData() async {
    try{
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    }catch(e){

    }
  }

}