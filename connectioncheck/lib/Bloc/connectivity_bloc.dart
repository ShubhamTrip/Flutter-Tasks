import 'package:connectioncheck/Bloc/connecetivity_state.dart';
import 'package:connectioncheck/Bloc/connectivity_event.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent,ConnectivityState>{
  var connectivityResult = Connectivity();

  ConnectivityBloc() : super(InternetInitialState()){
    on<InternetConnectedEvent>((event, emit) => emit(InternetConnectedState()));
    on<InternetDisconnectedEvent>((event, emit) => emit(InternetDisconnectedState()));

    connectivityResult.onConnectivityChanged.listen((event) {
      if(event == ConnectivityResult.mobile ){
        add(InternetConnectedEvent());
      }
      else if( event==ConnectivityResult.wifi){
        add(InternetConnectedEvent());
      }
      else{
        add(InternetDisconnectedEvent());
      }
    });
  }
}