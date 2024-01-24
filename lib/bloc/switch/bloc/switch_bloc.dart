import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/switch/bloc/switch_state.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(SwitchState()) {
    on<EnableOrDisableNotification>(_onSwitch);

    // Remove the event handler for SliderEvents
  }

  void _onSwitch(EnableOrDisableNotification event, Emitter<SwitchState> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  // Remove the event handler for slider

  // Add a method to handle slider changes directly in the state
  void updateSlider(double sliderValue) {
    emit(state.copyWith(slider: sliderValue));
  }
}
