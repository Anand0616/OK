import 'package:dart_application_1/linked_list.dart';

void main() {
  final queue = QueueList<int>();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  print(queue);
}

abstract class Queue<E> {
  void enqueue(E value);
  E? dequeue();
  bool get isEmpty;
}

class QueueList<E> implements Queue<E> {
  @override
  final List<E> _list = [];
  E dequeue() => _list.removeAt(0);

  @override
  void enqueue(E value) => _list.add(value);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  String toString() => _list.toString();
}

class QueueLinkedList<E> implements Queue<E> {
  final _list = LinkedList<E>();

  @override
  E? dequeue() => _list.pop();

  @override
  void enqueue(E value) => _list.append(value);

  @override
  bool get isEmpty => _list.isEmpty;
}
