class CounterDatabase {
  static Future<CounterDatabase> openAsync(String name) async {
    throw UnsupportedError('CounterDatabase is not supported on the web.');
  }
}
