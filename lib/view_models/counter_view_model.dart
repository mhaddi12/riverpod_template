import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/counter_model.dart';
import '../repositories/counter_service_repo.dart';
import '../services/counter_service.dart';

class CounterViewModel extends StateNotifier<CounterModel> {
  final CounterService _counterService;

  CounterViewModel(this._counterService) : super(CounterModel(0)) {
    _initialize();
  }

  Future<void> _initialize() async {
    final initialCount = await _counterService.fetchInitialCount(); //0
    state = CounterModel(initialCount);
  }

  Future<void> increment() async {
    final newCount = await _counterService.incrementCount(state.count);
    state = state.copyWith(count: newCount);
  }

  Future<void> decrement() async {
    final newCount = await _counterService.decrementCount(state.count);
    state = state.copyWith(count: newCount);
  }
}