void main() {
  popExample();
  removeLastExample();
  removeAfterExample();
}

void popExample() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list); // 1 -> 2 -> 3

  list.pop();
  print(list); // 2 -> 3 (if you are successful)
}

void removeLastExample() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list); // 1 -> 2 -> 3

  list.removeLast();
  print(list); // 1 -> 2 (if you are successful)
}

void removeAfterExample() {
  var list = LinkedList<int>();
  list.push(77);
  list.push(42);
  list.push(3);
  list.push(2);
  list.push(1);
  print(list); // 1 -> 2 -> 3 -> 42 -> 77

  final node = list.nodeAt(index: 2);
  list.removeAfter(node!);
  print(list); // 1 -> 2 -> 3 -> 77 (if you are successful)
}

class Node<T> {
  Node(this.value);
  T? value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  void push(E value) {
    final node = Node(value);
    if (isEmpty) {
      head = node;
      tail = node;
      return;
    }
    node.next = head;
    head = node;
  }

  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    final node = Node(value);
    tail!.next = node;
    tail = node;
  }

  Node<E>? nodeAt({required int index}) {
    if (isEmpty) {
      return null;
    }
    var currentNode = head;
    for (var i = 0; i < index; i++) {
      if (currentNode!.next == null) {
        return null;
      }
      currentNode = currentNode.next;
    }
    return currentNode;
  }

  void insertAfter(Node<E>? node, E value) {
    if (node == null) return;
    final newNode = Node(value);
    if (isEmpty) {
      push(value);
    } else {
      if (node.next == null) {
        append(value);
        return;
      }
      newNode.next = node.next;
      node.next = newNode;
    }
  }

  E? pop() {
    // TODO: remove head
    final value = head?.value;
    head = head?.next;
    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  E? removeLast() {
    // TODO: remove tail
    if (head?.next == null) return pop();

    var current = head;
    while (current?.next != tail) {
      current = current?.next;
    }
    //get value
    final value = tail?.value;
    //update tail
    tail = current;
    current?.next = null;

    return value;
  }

  E? removeAfter(Node<E> node) {
    // TODO: remove node.next
    final value = node.next?.value;

    // if (node.next == tail) return removeAfter();
    if (node.next == tail) {
      tail = node;
      tail?.next = null;
    }
    node.next = node.next?.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
