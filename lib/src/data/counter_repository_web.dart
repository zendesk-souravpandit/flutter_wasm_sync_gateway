class CounterRepository {
  CounterRepository({required dynamic database});
  Future<int> counterValue(String id) async => 0;
  Stream<int> watchCounterValue(String id) async* {
    yield 0;
  }

  Future<void> updateCounterValue(String id, {required int delta}) async {}
  Stream<void> syncCounter(String id) async* {}
}
