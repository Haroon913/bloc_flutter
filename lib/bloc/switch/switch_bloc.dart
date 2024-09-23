import 'package:bloc/bloc.dart';
import 'package:bloc_flutter/bloc/switch/switch_event.dart';
import 'package:bloc_flutter/bloc/switch/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent,SwitchState>{
  SwitchBloc():super(SwitchState()){
    on<EnableorDisableNotification>(_enableOrDisableNotification);
    on<SliderEvents>(_slider);
  }
  void _enableOrDisableNotification(EnableorDisableNotification event,Emitter<SwitchState> emit){
    emit(state.copyWith(isSwitch: !state.isSwitch));

  }
  void _slider(SliderEvents event,Emitter<SwitchState> emit){
    emit(state.copyWith(slider: event.slider));
  }

}