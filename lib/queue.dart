void main() {
  final queue = QueueList<int>();
}

abstract class Queue<E> {
  void enqueue(E value);
  E dequeue();
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
  String toString() {
    return _list.toString();
  }
}
