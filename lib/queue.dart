import 'package:dart_application_1/ring_buffer.dart';

import 'linked_list.dart';

import 'heap.dart';

abstract class Queue<E> {
  void enqueue(E value);
  E? dequeue();
  bool get isEmpty;
  //E? peek();
}

class PriorityQueue<E extends Comparable> implements Queue<E> {
  PriorityQueue({bool isMin = false}) {
    if (!isMin) {
      _heap = Heap<E>(type: HeapType.max);
    } else {
      _heap = Heap<E>(type: HeapType.min);
    }
  }

  late Heap<E> _heap;

  @override
  E? dequeue() => _heap.removeRoot();

  @override
  void enqueue(E value) => _heap.insert(value);

  @override
  bool get isEmpty => _heap.isEmpty;

  @override
  String toString() {
    return _heap.toString();
  }
}

class QueueList<E> implements Queue<E> {
  final List<E> _list = [];

  @override
  E? dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  void enqueue(E value) => _list.add(value);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  String toString() {
    return _list.toString();
  }
}

class QueueLinkedList<E> implements Queue<E> {
  final _list = LinkedList<E>();

  @override
  E? dequeue() => _list.pop();

  @override
  void enqueue(E value) => _list.append(value);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  String toString() {
    return _list.toString();
  }
}

class QueueRingBuffer<E> implements Queue<E> {
  QueueRingBuffer(int length) : _ringBuffer = RingBuffer<E>(length);

  final RingBuffer<E> _ringBuffer;

  @override
  E? dequeue() => _ringBuffer.read();

  @override
  void enqueue(E value) {
    final isSuccessful = _ringBuffer.write(value);
    if (!isSuccessful) throw Exception('Buffer is full');
  }

  @override
  bool get isEmpty => _ringBuffer.isEmpty;

  @override
  String toString() => _ringBuffer.toString();
}
