abstract class CounterService {
  Future<int> fetchInitialCount();
  Future<int> incrementCount(int currentCount);
  Future<int> decrementCount(int currentCount);
}