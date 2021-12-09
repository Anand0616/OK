import 'package:dart_application_1/heap.dart';

List<int> heapSort(List<int> list) {
  final sorted = <int>[];
//TODO
  final heap = Heap(values: list);
  for (var i = 0; i < list.length; i++) {
    var value = heap.removeRoot();
    sorted.add(value!);
  }
  return sorted;
}
