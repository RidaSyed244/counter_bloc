import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/counter/counter_events.dart';
import 'package:counter_bloc/bloc/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<IncrementCounter>(onIncrement);
    on<DecrementCounter>(onDecrement);
  }
  void onIncrement(IncrementCounter events, Emitter<CounterState> emit) {
    emit(state.copyWith(counterValue: state.counterValue + 1));
  }

  void onDecrement(DecrementCounter events, Emitter<CounterState> emit) {
    emit(state.copyWith(counterValue: state.counterValue - 1));
  }
}
