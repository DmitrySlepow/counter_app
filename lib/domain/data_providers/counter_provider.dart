import 'package:shared_preferences/shared_preferences.dart';

class CounterProvider {
  Future<void> save(int counter) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', counter);
    print('save');
  }

  Future<int> load() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = prefs.getInt('counter') ?? 0;
    print('load');
    return counter;
  }
}
