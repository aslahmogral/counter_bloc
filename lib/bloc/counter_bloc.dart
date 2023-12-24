import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      var currentValue = state.count;
      var updatedValue = currentValue + 1;
      return emit(CounterState(count: updatedValue));
    });

    on<Decrement>((event, emit) {
      var currentValue = state.count;
      var updatedValue = currentValue - 1;
      return emit(CounterState(count: updatedValue));
    });
  }
}
