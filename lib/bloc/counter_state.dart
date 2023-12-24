part of 'counter_bloc.dart';

class CounterState {
  final int count;

  CounterState({required this.count});
}


//initial state
class InitialState extends CounterState {
  InitialState() : super(count: 1);
}
