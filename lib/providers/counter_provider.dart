import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/counter_model.dart';
import '../services/counter_service.dart';
import '../view_models/counter_view_model.dart';


final counterServiceProvider = Provider<CounterService>((ref) => CounterServiceImpl());

final counterViewModelProvider = StateNotifierProvider<CounterViewModel, CounterModel>(
      (ref) => CounterViewModel(ref.watch(counterServiceProvider)),
);