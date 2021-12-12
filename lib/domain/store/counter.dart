import 'package:counter_app/domain/data_providers/counter_provider.dart';
import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  CounterProvider cp = CounterProvider();

  @observable
  int count = 0;

  _Counter() {
    initialize();
  }

  @action
  void increment() async {
    count++;
    await cp.save(count);
  }

  @action
  void initialize() async {
    count = await cp.load();
  }

  @action
  void decrement() async {
    count--;
    await cp.save(count);
  }
}
