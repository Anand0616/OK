void main() {
  final queue = MyQueue<int>();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  print(queue);
}

abstract class Queue<E> {
  void enqueue(E value);
  E dequeue();
  bool get isEmpty;
}

class MyQueue<E> implements Queue<E> {
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
