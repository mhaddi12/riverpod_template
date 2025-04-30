



import '../repositories/counter_service_repo.dart';

class CounterServiceImpl implements CounterService {
  @override
  Future<int> fetchInitialCount() async {
    // Simulate API call
    await Future.delayed(Duration(seconds: 1));
    return 0;
  }

  @override
  Future<int> incrementCount(int currentCount) async {
    // Simulate API call

    return currentCount + 1;
  }

  @override
  Future<int> decrementCount(int currentCount) async {
    // Simulate API call

    if(currentCount <= 0) return 0;
    return currentCount - 1;
  }
}